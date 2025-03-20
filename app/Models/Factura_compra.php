<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Factura_compra extends Model
{
    use HasFactory;

    protected $table = 'factura_compra';
    protected $primaryKey = 'id';

    protected $fillable = [
        'proveedor_id',
        'usuario_id',
        'nombreProveedor',
        'telefono',
        'fecha',
        'status',
        'registradoPor',
    ];

    public function proveedor()
    {
        return $this->belongsTo(Proveedor::class, 'proveedores_id');
    }

    public function usuario()
    {
        return $this->belongsTo(User::class, 'usuarios_id');
    }

    public function detalles()
    {
        return $this->hasMany(Detalle_Compra::class, 'factura_compra_id');
    }
}
