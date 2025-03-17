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
    ] ;

    public function facturas(){
        return $this->belongsTo(Detalle_factura::class,'idFactura');
    }
}
