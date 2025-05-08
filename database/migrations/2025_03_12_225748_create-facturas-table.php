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
        Schema::create('facturas', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('cliente_id');
            $table->unsignedBigInteger('usuario_id');
            $table->datetime('fecha')->nullable();
            $table->decimal('total', 10 , 2);
            $table->boolean('estado');
            $table->string('registradoPor');
            $table->timestamp('created_at')->nullable(); 
            $table->timestamp('updated_at')->nullable();
            $table->foreign('cliente_id')->references('id')->on('clientes');
            $table->foreign('usuario_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('facturas');
    }
};
