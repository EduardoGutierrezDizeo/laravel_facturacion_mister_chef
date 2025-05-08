<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;


class Factura extends Model
{
    use HasFactory;

    protected $table = 'facturas';
    protected $primaryKey = 'id';
    protected $fillable = [
        'cliente_id',
        'usuario_id',
        'fecha',
        'total',
        'estado',
        'registradoPor',
    ];

    public function cliente()
    {
        return $this->belongsTo(Cliente::class, 'cliente_id');
    }

    public function usuario()
    {
        return $this->belongsTo(User::class, 'usuario_id');
    }

    public function detalles()
    {
        return $this->hasMany(Detalle_Factura::class, 'factura_id');
    }

    public function cuentaPorCobrar()
    {
        return $this->hasOne(Cuenta_Por_Cobrar::class, 'factura_id');
    }
}