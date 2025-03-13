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
            $table->unsignedBigInteger('id_cliente');
            $table->string('name');
            $table->string('phone');
            $table->datetime('date')->nullable();
            $table->decimal('total', 10 , 2);
            $table->boolean('status');
            $table->string('registerBy');
            $table->timestamp('created_at')->nullable(); 
            $table->timestamp('updated_at')->nullable();
            $table->foreign('id_cliente')->references('id')->on('clientes');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExist('facturas');
    }
};
