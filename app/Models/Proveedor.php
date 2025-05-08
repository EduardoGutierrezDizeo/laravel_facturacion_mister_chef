<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Proveedor extends Model
{
    use HasFactory;

    protected $table = 'proveedores';
    protected $primaryKey = 'id';

    protected $fillable = [
        'nombreProveedor',
        'ciudad',
        'direccion',
        'email',
        'numeroTelefono',
    ];

    public function productos()
    {
        return $this->hasMany(Producto::class, 'proveedor_id');
    }

    public function facturasCompra()
    {
        return $this->hasMany(Factura_Compra::class, 'proveedor_id');
    }
}
