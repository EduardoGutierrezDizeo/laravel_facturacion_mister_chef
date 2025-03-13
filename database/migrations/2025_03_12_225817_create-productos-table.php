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
            $table->unsignedBigInteger("idProvedor");
            $table->string("nombreProducto");
            $table->integer("stockProducto");
            $table->integer("gramajeProducto");
            $table->decimal("precioVentaProducto", 10, 2);
            $table->decimal("precioCostoProducto", 10, 2);
            $table->decimal("precioProduccionProducto", 10, 2);
            $table->timestamp("created_at")->nullable();
            $table->timestamp("updated_at")->nullable();
            $table->foreign("idProvedor")->references("id")->on("provedores");
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