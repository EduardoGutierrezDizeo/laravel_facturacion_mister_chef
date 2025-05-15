<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Proveedor;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Producto>
 */
class ProductoFactory extends Factory
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
            'nombreProducto' => $this->faker->word(),
            'stockActual' => $this->faker->numberBetween(10, 100),
            'stockMinimo' => $this->faker->numberBetween(1, 10),
            'gramaje' => $this->faker->numberBetween(50, 1000),
            'precioVenta' => $this->faker->randomFloat(2, 1, 100),
            'precioCosto' => $this->faker->randomFloat(2, 1, 50),
            'precioProduccion' => $this->faker->randomFloat(2, 1, 40),
            'estado' => $this->faker->boolean(),
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
