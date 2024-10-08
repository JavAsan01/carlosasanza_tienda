<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Usuario extends Model
{
    use HasFactory;

    protected $table = 'usuarios';

    protected $fillable = [
        'nombre',
        'email',
        'password',
        'verificado',
        'admin',
        'remember_token',
        'verificacion_token',
    ];

    public function productos()
    {
        return $this->hasMany(Producto::class, 'id_vendedor');
    }

    public function transacciones()
    {
        return $this->hasMany(Transaccion::class, 'id_comprador');
    }
}
