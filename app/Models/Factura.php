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
        'id_cliente',
        'name',
        'phone',
        'date',
        'total',
        'status',
        'registerBy',
    ];

    public function cliente()
    {
        return $this->belongsTo(Cliente::class, 'clientes_id');
    }

    public function usuario()
    {
        return $this->belongsTo(User::class, 'usuarios_id');
    }

    public function detalles()
    {
        return $this->hasMany(Detalle_Factura::class, 'facturas_id');
    }

    public function cuentaPorCobrar()
    {
        return $this->hasOne(Cuenta_Por_Cobrar::class, 'facturas_id');
    }
}