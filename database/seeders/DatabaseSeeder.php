<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\Usuario;
use App\Models\Producto;
use App\Models\Categoria;
use App\Models\Transaccion;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        // Crear
        Usuario::factory(10)->create();
        Categoria::factory(5)->create();
        Producto::factory(20)->create();
        Transaccion::factory(30)->create();
    }
}
