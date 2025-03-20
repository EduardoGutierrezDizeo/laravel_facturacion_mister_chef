<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;


class Cuenta_por_cobrar extends Model
{
    use HasFactory;

    protected $table = 'cuentas_por_cobrar';
    protected $primaryKey = 'id';
    protected $fillable = [
        'factura_id',
        'nombreCliente',
        'numeroFactura',
        'totalCuentaPendiente',
        'status',
    ];

    public function factura()
    {
        return $this->belongsTo(Factura::class, 'facturas_id');
    }

}


