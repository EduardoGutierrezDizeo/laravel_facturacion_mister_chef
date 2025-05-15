<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;
use App\Models\Proveedor;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Factura_Compra>
 */
class Factura_CompraFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'proveedor_id' => Proveedor::inRandomOrder()->first()->id,
            'usuario_id' => User::inRandomOrder()->first()->id,
            'fecha' => $this->faker->dateTimeThisYear(),
            'estado' => $this->faker->boolean(),
            'registradoPor' => $this->faker->name(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
