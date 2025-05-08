<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create("productos", function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger("proveedor_id");
            $table->string("nombreProducto");
            $table->integer("stockActual");
            $table->integer("stockMinimo");
            $table->integer("gramaje");
            $table->decimal("precioVenta", 10, 2);
            $table->decimal("precioCosto", 10, 2);
            $table->decimal("precioProduccion", 10, 2);
            $table->boolean("status");
            $table->timestamp("created_at")->nullable();
            $table->timestamp("updated_at")->nullable();
            $table->foreign("proveedor_id")->references("id")->on("proveedores");
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists("productos");
    }
};