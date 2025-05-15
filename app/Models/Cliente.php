<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Cliente extends Model
{
    use HasFactory;

    protected $table = 'clientes';
    protected $primaryKey = 'id';
    protected $fillable = [
        'nombre',
        'email',
        'telefono',
        'direccion',
        'fechaNacimiento',
        'estado',
    ];

    public function facturas()
    {
        return $this->hasMany(Factura::class, 'cliente_id');
    }

}
