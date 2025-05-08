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
        'fecha',
        'status',
        'registradoPor',
    ];

    public function proveedor()
    {
        return $this->belongsTo(Proveedor::class, 'proveedor_id');
    }

    public function usuario()
    {
        return $this->belongsTo(User::class, 'usuario_id');
    }

    public function detallesCompra()
    {
        return $this->hasMany(Detalle_Compra::class, 'facturaCompra_id');
    }
}
