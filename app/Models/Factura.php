<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Factura extends Model
{
    use HasFactory;

    protected $table = 'facturas';
    protected $primaryKey = 'id';
    protected $fillable = [
        'id_cliente',
        'name',
        'phone',
        'date',
        'total',
        'status',
        'registerBy',
    ];

    public function cliente(){
        return $this->belongsTo(Cliente::class, 'id_cliente');
    }
}
