<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Producto extends Model
{
    use HasFactory;

    protected $table = 'productos';
    protected $fillable = [
        'proveedor_id',
        'nombreProducto',
        'stockActual',
        'stockMinimo',
        'gramaje',
        'precioVenta',
        'precioCosto',
        'precioProduccion',
        'status',
    ];

    public function detalles_factura()
    {
        return $this->hasMany(Detalle_factura::class);
    }

    public function proveedor()
    {
        return $this->belongsTo(Proveedor::class, 'proveedor_id');
    }

    public function detallesFactura()
    {
        return $this->hasMany(Detalle_Factura::class, 'producto_id');
    }

    public function detallesCompra()
    {
        return $this->hasMany(Detalle_Compra::class, 'producto_id');
    }
}
