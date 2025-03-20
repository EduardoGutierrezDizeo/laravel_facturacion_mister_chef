<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Producto extends Model
{
    use HasFactory;

    protected $table = 'productos';
    protected $fillable = [
        'idProvedor',
        'nombreProducto',
        'stockProducto',
        'gramajeProducto',
        'precioVentaProducto',
        'precioCostoProducto',
        'precioProduccionProducto',
    ];

    public function detalles_factura()
    {
        return $this->hasMany(Detalle_factura::class);
    }

    public function proveedor()
    {
        return $this->belongsTo(Proveedor::class, 'proveedores_id');
    }

    public function detallesFactura()
    {
        return $this->hasMany(Detalle_Factura::class, 'productos_id');
    }

    public function detallesCompra()
    {
        return $this->hasMany(Detalle_Compra::class, 'productos_id');
    }
}
