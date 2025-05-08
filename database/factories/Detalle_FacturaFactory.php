<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Factura;
use App\Models\Producto;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Detalle_Factura>
 */
class Detalle_FacturaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'producto_id' => Producto::inRandomOrder()->first()->id,
            'factura_id' => Factura::inRandomOrder()->first()->id,
            'cantidadProducto' => $this->faker->numberBetween(1, 10),
            'precio' => $this->faker->randomFloat(2, 1, 100),
            'subTotal' => function (array $attributes) {
                return $attributes['cantidadProducto'] * $attributes['precio'];
            },
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
