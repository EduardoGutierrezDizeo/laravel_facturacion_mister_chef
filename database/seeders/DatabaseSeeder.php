<?php

namespace Database\Seeders;

use App\Models\Cliente;
use App\Models\User;
use App\Models\Proveedor;
use App\Models\Producto;
use App\Models\Factura;
use App\Models\Factura_compra;
use App\Models\Detalle_factura;
use App\Models\Detalle_compra;
use App\Models\Cuenta_por_cobrar;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::create([
            'name' => 'Eduardo Gutierrez de Piñerez',
            'email' => 'edojose1518@gmail.com',
            'password' => bcrypt('ripazha02'),
        ]);

        Cliente::factory(20)->create();
        Proveedor::factory(20)->create();
        Producto::factory(20)->create();
        Factura::factory(20)->create();
        Factura_compra::factory(20)->create();
        Detalle_factura::factory(20)->create();
        Detalle_compra::factory(20)->create();
        Cuenta_por_cobrar::factory(20)->create();

    }
}
