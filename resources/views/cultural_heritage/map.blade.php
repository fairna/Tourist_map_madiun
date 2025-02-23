@extends('layouts.app')

@section('styles')
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.5.3/dist/MarkerCluster.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet.markercluster@1.5.3/dist/MarkerCluster.Default.css" />
    <style>
        #map { height: 500px; width: 100%; }
        .category-color {
            display: inline-block;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            border: 1px solid #000;
        }
    </style>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

@endsection

@section('content')
    <div class="container-fluid">
        <p>
            Website interaktif yang menyajikan peta wisata Kota Madiun dengan fitur navigasi, rekomendasi kuliner, destinasi budaya, serta event lokal secara real-time.
        </p>
        <div class="row">
            <div class="col-md-4 p-5">
                <h4 class="mb-3">Kategori</h4>
                <div class="list-group" id="location-list">
                    @foreach ($categories as $category)
                        <div class="row">
                            <div class="col-1">
                                <span class="category-color" data-category-id="{{ $category->id }}"></span>
                            </div>
                            <div class="col">
                                <h5>{{ $category->nama_kategori }}</h5>
                            </div>
                            <hr>
                        </div>
                    @endforeach
                </div>
            </div>
            
            <!-- Peta -->
            <div class="col-md-6 p-5">
                <div id="map"></div>

            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="locationModal" tabindex="-1">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Detail Cagar Budaya</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
                    <div class="modal-body">
                        <div id="modalContent">
                            <!-- Konten akan diisi melalui JavaScript -->
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection

@section('javascripts')
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
<script src="https://unpkg.com/leaflet.markercluster@1.5.3/dist/leaflet.markercluster.js"></script>

<script>
    const categoryColors = {}; // Menyimpan warna kategori
    const predefinedColors = [ // Palet warna cerah dan berbeda
        "#e6194B", "#3cb44b", "#ffe119", "#4363d8", "#f58231", 
        "#911eb4", "#42d4f4", "#f032e6", "#bfef45", "#fabed4", 
        "#469990", "#dcbeff", "#9A6324", "#fffac8", "#800000"
    ];

    function getCategoryColor(categoryId) {
        if (!categoryColors.hasOwnProperty(categoryId)) {
            // Ambil warna dari array, jika habis maka ambil random yang belum dipakai
            const colorIndex = Object.keys(categoryColors).length % predefinedColors.length;
            categoryColors[categoryId] = predefinedColors[colorIndex];
        }
        return categoryColors[categoryId];
    }

    function getRandomColor() {
        const colors = [
            "#ff5733", "#33ff57", "#3357ff", "#ff33a1", "#a133ff",
            "#ff8c33", "#33ffa1", "#a1ff33", "#5733ff", "#ff3333"
        ];
        return colors[Math.floor(Math.random() * colors.length)]; // Ambil warna dari daftar
    }
    
    function getCustomIcon(categoryId) {
        const color = getCategoryColor(categoryId); // Ambil warna berdasarkan kategori
        return L.divIcon({
            className: "custom-marker",
            html: `<div style="
                background-color: ${color};
                width: 20px; height: 20px;
                border-radius: 50%;
                border: 2px solid white;
                box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
            "></div>`,
            iconSize: [20, 20],
            iconAnchor: [10, 10]
        });
    } 

    document.addEventListener("DOMContentLoaded", function () {
        const map = L.map('map').setView([-7.623679, 111.503135], 13);

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '© OpenStreetMap'
        }).addTo(map);

        const locations = @json($locations); // Data dari database
        console.log(locations);
        const markers = L.markerClusterGroup(); // Gunakan marker cluster

        locations.forEach(location => {
        const lat = parseFloat(location.latitude);
        const lng = parseFloat(location.longitude);
        const categoryId = location.id_category; // Pastikan ini angka

        if (!isNaN(lat) && !isNaN(lng) && !isNaN(categoryId)) {
            const marker = L.marker([lat, lng], { icon: getCustomIcon(categoryId) });

            // Event ketika marker diklik
            marker.on("click", function () {
                document.getElementById("modalContent").innerHTML = `
                    <h3>${location.nama_destinasi}</h3>
                    <p><strong>Alamat:</strong> ${location.alamat}</p>
                    <p><strong>Deskripsi:</strong> ${location.deskripsi}</p>
                `;

                // Tampilkan modal
                var locationModal = new bootstrap.Modal(document.getElementById('locationModal'));
                locationModal.show();
            });

            markers.addLayer(marker);
        }
    });

        map.addLayer(markers);
    });

    document.addEventListener("DOMContentLoaded", function () {
        // Setelah warna marker dibuat, tambahkan ke kategori
        document.querySelectorAll(".category-color").forEach(span => {
            const categoryId = span.getAttribute("data-category-id");
            const color = getCategoryColor(categoryId); // Ambil warna yang sama dengan marker
            span.style.backgroundColor = color;
        });
    });
</script>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" defer></script>
@endsection
