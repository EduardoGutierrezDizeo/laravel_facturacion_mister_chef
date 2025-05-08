<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Factura_compra;
use App\Models\Producto;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Detalle_Compra>
 */
class Detalle_CompraFactory extends Factory
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
            'facturaCompra_id' => Factura_Compra::inRandomOrder()->first()->id,
            'cantidad' => $this->faker->numberBetween(1, 20),
            'precio' => $this->faker->randomFloat(2, 1, 100),
            'subTotal' => function (array $attributes) {
                return $attributes['cantidad'] * $attributes['precio'];
            },
            'created_at' => now(),
            'updated_at' => now(),
        ];
    }
}
