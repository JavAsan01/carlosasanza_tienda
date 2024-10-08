<?php

namespace Database\Factories;

use App\Models\Usuario;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Usuario>
 */
class UsuarioFactory extends Factory
{
    protected $model = Usuario::class;

    public function definition(): array
    {
        return [
            'nombre' => $this->faker->name,
            'email' => $this->faker->unique()->safeEmail,
            'password' => Hash::make('password'),
            'verificado' => $this->faker->boolean,
            'admin' => $this->faker->boolean,
            'remember_token' => \Str::random(10),
            'verificacion_token' => \Str::random(10),
        ];
    }
}
