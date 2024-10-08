<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TransaccionController extends Controller
{
    //
    public function store(Request $request) {
        $producto = Producto::find($request->id_producto);
    
        if ($producto && $producto->cantidad >= $request->cantidad) {
            // Realiza la transacción
            Transaccion::create([
                'cantidad' => $request->cantidad,
                'id_comprador' => $request->id_comprador,
                'id_producto' => $request->id_producto
            ]);
            $producto->cantidad -= $request->cantidad;
            $producto->save();
    
            return redirect()->back()->with('success', 'Compra realizada');
        } else {
            return redirect()->back()->withErrors('Stock insuficiente');
        }
    }
}
