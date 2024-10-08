<?php

namespace Database\Factories;

use App\Models\Transaccion;
use App\Models\Usuario;
use App\Models\Producto;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Transaccion>
 */
class TransaccionFactory extends Factory
{
    protected $model = Transaccion::class;

    public function definition(): array
    {
        return [
            'cantidad' => $this->faker->numberBetween(1, 10),
            'id_comprador' => Usuario::factory(), // Relación con usuarios
            'id_producto' => Producto::factory(), // Relación con productos
        ];
    }
}
