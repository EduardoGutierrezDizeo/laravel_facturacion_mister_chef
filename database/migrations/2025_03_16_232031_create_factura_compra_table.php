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
        Schema::create('factura_compra', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('proveedor_id');
            $table->unsignedBigInteger('usuario_id');
            $table->string('nombreProvedor');
            $table->string('telefono');
            $table->dateTime('fecha');
            $table->char('status');
            $table->string('registradoPor');
            $table->timestamps();
            $table->foreign('proveedor_id')->references('id')->on('proveedores');
            $table->foreign('usuario_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('factura_compra');
    }
};
