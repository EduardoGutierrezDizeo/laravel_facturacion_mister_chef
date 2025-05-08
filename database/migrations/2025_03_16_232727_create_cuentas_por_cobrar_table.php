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
        Schema::create('cuentas_por_cobrar', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('factura_id');
            $table->decimal('totalCuentaPendiente',10,2);
            $table->char('status');
            $table->timestamps();
            $table->foreign('factura_id')->references('id')->on('facturas');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('cuentas_por_cobrar');
    }
};
