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
        Schema::create('detalles_compra', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('producto_id');
            $table->unsignedBigInteger('facturaCompra_id');
            $table->integer('cantidad');
            $table->decimal('precio',10,2);
            $table->decimal('subTotal',10,2);
            $table->timestamps();
            $table->foreign('producto_id')->references('id')->on('productos');
            $table->foreign('facturaCompra_id')->references('id')->on('factura_compra');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('detalles_compra');
    }
};
