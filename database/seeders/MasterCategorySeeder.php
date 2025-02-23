<?php

namespace Database\Seeders;

use App\Models\MasterCategory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MasterCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        MasterCategory::create([
            'nama_kategori' => 'Cagar Budaya',
        ]);

        MasterCategory::create([
            'nama_kategori' => 'Religi',
        ]);

        MasterCategory::create([
            'nama_kategori' => 'Monumen dan Landmark',
        ]);

        MasterCategory::create([
            'nama_kategori' => 'Kuliner',
        ]);

        MasterCategory::create([
            'nama_kategori' => 'Wisata Edukasi',
        ]);
    }
}
