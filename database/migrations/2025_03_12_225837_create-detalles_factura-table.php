<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create("detalles_factura", function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger("idProducto");
            $table->unsignedBigInteger("idFactura");
            $table->string("nombreProducto");
            $table->integer("cantidadProducto");
            $table->decimal("precio", 10, 2);
            $table->decimal("subTotal", 10, 2);
            $table->timestamp("created_at")->nullable();
            $table->timestamp("updated_at")->nullable();
            $table->foreign("idProducto")->references("id")->on("productos");
            $table->foreign("idFactura")->references("id")->on("facturas");
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists("detalles_factura");
    }
};