<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wisata Kota Madiun</title>
    
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])
</head>
<body>
    @include('components.navbar')
    
    <div class="container-fluid mt-4">
        @yield('styles')
        @yield('content')
        @yield('javascripts')
    </div>
    
</body>
</html>