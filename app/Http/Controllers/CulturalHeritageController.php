<?php

namespace App\Http\Controllers;

use App\Models\CulturalHeritage;
use App\Models\MasterCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CulturalHeritageController extends Controller
{
    public function showMap()
    {
        // $locations = CulturalHeritage::all();
        // $locations = CulturalHeritage::select('nama_destinasi', 'alamat', DB::raw('CAST(latitude AS DECIMAL(10,6)) AS latitude'), DB::raw('CAST(longitude AS DECIMAL(10,6)) AS longitude'))->get();
        $locations = CulturalHeritage::get()->map(function ($location) {
            return [
                'nama_destinasi' => $location->nama_destinasi,
                'alamat' => $location->alamat,
                'latitude' => (float) $location->latitude, // Ubah ke float
                'longitude' => (float) $location->longitude, // Ubah ke float
                'id_category' => $location->id_category,
                'deskripsi' => $location->deskripsi,
            ];
        });
        $categories = MasterCategory::all();
        return view('cultural_heritage.map', compact('locations', 'categories'));
    }
}
