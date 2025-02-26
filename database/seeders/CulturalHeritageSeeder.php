<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class CulturalHeritageSeeder extends Seeder
{
    public function run()
    {
        // File Query
        $sqlPath = database_path('seeders/sql/CulturalHeritage.sql');


        if (!File::exists($sqlPath)) {
            $this->command->error("File $sqlPath tidak ditemukan!");
            return;
        }

        // Baca isi file SQL
        $sql = File::get($sqlPath);

        // Jalankan query SQL
        DB::unprepared($sql);

        $this->command->info('Seeder CulturalHeritage telah berhasil dijalankan!');
    }
}
