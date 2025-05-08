<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Proveedor>
 */
class ProveedorFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'nombreProveedor' => $this->faker->company(),
            'ciudad' => $this->faker->city(),
            'direccion' => $this->faker->address(),
            'email' => $this->faker->safeEmail(),
            'numeroTelefono' => $this->faker->phoneNumber(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
