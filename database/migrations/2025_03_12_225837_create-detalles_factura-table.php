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
            $table->unsignedBigInteger("producto_id");
            $table->unsignedBigInteger("factura_id");
            $table->integer("cantidadProducto");
            $table->decimal("precio", 10, 2);
            $table->decimal("subTotal", 10, 2);
            $table->timestamp("created_at")->nullable();
            $table->timestamp("updated_at")->nullable();
            $table->foreign("producto_id")->references("id")->on("productos");
            $table->foreign("factura_id")->references("id")->on("facturas");
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