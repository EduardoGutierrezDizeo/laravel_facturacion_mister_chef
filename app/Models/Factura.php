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

    public function cliente(){
        return $this->belongsTo(Cliente::class, 'id_cliente');
    }

    public function cuneta_por_cobrar(){
        return $this->belongsTo(Cuenta_por_cobrar::class);
    }

    public function detalles_factura(){
        return $this->hasMany(Detalle_factura::class);
    }
}
