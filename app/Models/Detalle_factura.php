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
        'producto_id',
        'factura_id',
        'cantidadProducto',
        'precio',
        'subTotal',
    ];

    public function factura()
    {
        return $this->belongsTo(Factura::class, 'factura_id');
    }

    public function producto()
    {
        return $this->belongsTo(Producto::class, 'producto_id');
    }
}
