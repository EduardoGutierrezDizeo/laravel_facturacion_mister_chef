<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Detalle_compra extends Model
{
    use HasFactory;

    protected $table = 'detalles_compra';
    protected $primaryKey = 'id';

    protected $fillable = [
        'producti_id',
        'factura_id',
        'nombreProducto',
        'cantidad',
        'precio',
        'subTotal',
    ];

    public function facturaCompra()
    {
        return $this->belongsTo(Factura_Compra::class, 'factura_compra_id');
    }

    public function producto()
    {
        return $this->belongsTo(Producto::class, 'productos_id');
    }
}
