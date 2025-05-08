<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Cliente;
use App\Models\User;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Factura>
 */
class FacturaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'cliente_id' => Cliente::inRandomOrder()->first()->id,
            'usuario_id' => User::inRandomOrder()->first()->id,
            'fecha' => $this->faker->dateTimeThisYear(),
            'total' => $this->faker->randomFloat(2, 10, 1000),
            'estado' => $this->faker->boolean(),
            'registradoPor' => $this->faker->name(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
