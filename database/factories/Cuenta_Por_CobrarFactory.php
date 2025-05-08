<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Factura;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Cuenta_Por_Cobrar>
 */
class Cuenta_Por_CobrarFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'factura_id' => Factura::inRandomOrder()->first()->id,
            'totalCuentaPendiente' => $this->faker->randomFloat(2, 10, 500),
            'estado' => $this->faker->boolean(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
