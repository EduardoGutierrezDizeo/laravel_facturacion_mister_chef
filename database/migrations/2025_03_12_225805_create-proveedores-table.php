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
        Schema::create("proveedores", function (Blueprint $table) {
            $table->id();
            $table->string("nombreProveedor");
            $table->string("ciudad");   
            $table->string("direccion")->nullable();
            $table->string("email")->nullable();
            $table->string("numeroTelefono");
            $table->boolean("estado");
            $table->timestamp("created_at")->nullable();
            $table->timestamp("updated_at")->nullable();                             
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists("proveedores");
    }
};