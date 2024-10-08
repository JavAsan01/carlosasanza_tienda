<?php

namespace Database\Factories;

use App\Models\Producto;
use App\Models\Usuario;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Producto>
 */
class ProductoFactory extends Factory
{
    protected $model = Producto::class;

    public function definition(): array
    {
        return [
            'nombre' => $this->faker->word,
            'descripcion' => $this->faker->sentence,
            'cantidad' => $this->faker->numberBetween(1, 100),
            'estado' => $this->faker->boolean,
            'id_vendedor' => Usuario::factory(), // Relación con usuarios
        ];
    }
}
