<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;


class Detalle_factura extends Model
{
    use HasFactory;

    protected $table = 'detalles_factura';
    protected $primaryKey = 'id';

    protected $fillable = [
        'idProducto',
        'idFactura',
        'nombreProducto',
        'cantidadProducto',
        'precio',
        'subTotal',
    ];

    public function factura()
    {
        return $this->belongsTo(Factura::class, 'facturas_id');
    }

    public function producto()
    {
        return $this->belongsTo(Producto::class, 'productos_id');
    }
}
