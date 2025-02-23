<?php

namespace Database\Seeders;

use App\Models\CulturalHeritage;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CulturalHeritageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        CulturalHeritage::create([
            'nama_destinasi' => 'Balaikota Madiun',
            'id_category' => '1',
            'alamat' => 'Jl. Pahlawan No. 37',
            'latitude' => -7.624444,
            'longitude' => 111.520556,
            'deskripsi' => 'Gedung Balaikota Madiun adalah pusat pemerintahan Kota Madiun. Bangunan ini memiliki arsitektur kolonial dan dibangun pada masa penjajahan Belanda. Gedung ini tetap difungsikan sebagai kantor wali kota hingga sekarang'
        ]);

        CulturalHeritage::create([
            'nama_destinasi' => 'Masjin Kuno Kuncen',
            'id_category' => '2',
            'alamat' => 'Jl. Asahan No. 46',
            'latitude' => -7.656389,
            'longitude' => 111.513889,
            'deskripsi' => 'Masjid Kuno Kuncen, juga dikenal sebagai Masjid Nur Hidayatulloh, adalah masjid tertua di Kelurahan Kuncen. Didirikan pada tahun 1568 oleh Pangeran Timur, masjid ini memiliki nilai sejarah yang tinggi dengan arsitektur khas Demak. Di sekitar masjid terdapat makam para bupati Madiun dan artefak-artefak bersejarah'
        ]);
    }
}
