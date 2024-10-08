<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductoController extends Controller
{
    //
    public function index() {
        $productos = Producto::all();
        return view('productos.index', compact('productos'));
    }
    
    public function store(Request $request)
    {
        $request->validate([
            'nombre' => 'required|string|max:100',
            'cantidad' => 'required|integer|min:1',
            'id_vendedor' => 'required|exists:usuarios,id',
        ]);

        // Guardar el producto
        Producto::create([
            'nombre' => $request->nombre,
            'descripcion' => $request->descripcion,
            'cantidad' => $request->cantidad,
            'estado' => false,  // El estado se inserta como inactivo
            'id_vendedor' => $request->id_vendedor,
        ]);
        return redirect('/productos');
    }

    public function activar($id)
    {
        $producto = Producto::find($id);
        $producto->estado = true;
        $producto->save();

        return redirect('/productos');
    }

    public function update(Request $request, $id) {
        $request->validate([
            'nombre' => 'required',
            'descripcion' => 'required',
            'cantidad' => 'required|integer|min:0'
        ]);
    
        $producto = Producto::find($id);
        $producto->update($request->all());
    
        return redirect()->route('productos.index');
    }
    
    public function destroy($id) {
        Producto::find($id)->delete();
        return redirect()->route('productos.index');
    }    
}
