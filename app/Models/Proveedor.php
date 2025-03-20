<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Proveedor extends Model
{
    use HasFactory;

    protected $table = 'proovedores';
    protected $primaryKey = 'id';

    protected $fillable = [
        'nombreProveedor',
        'email',
        'telefono',
        'direccion',
        'status',
    ];

    public function productos()
    {
        return $this->hasMany(Producto::class, 'proveedores_id');
    }

    public function facturasCompra()
    {
        return $this->hasMany(Factura_Compra::class, 'proveedores_id');
    }
}
