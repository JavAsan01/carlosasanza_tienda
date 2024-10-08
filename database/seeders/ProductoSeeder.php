<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB; // Importa la clase DB

class ProductoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('productos')->insert([
            ['nombre' => 'Producto 1', 'descripcion' => 'Descripción 1', 'cantidad' => 100, 'estado' => true, 'id_vendedor' => 1],
            ['nombre' => 'Producto 2', 'descripcion' => 'Descripción 2', 'cantidad' => 200, 'estado' => true, 'id_vendedor' => 1],
        ]);
    }
}

