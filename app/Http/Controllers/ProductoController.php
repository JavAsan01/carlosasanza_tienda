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
    
    public function store(Request $request) {
        $request->validate([
            'nombre' => 'required',
            'descripcion' => 'required',
            'cantidad' => 'required|integer|min:0',
            'id_vendedor' => 'required'
        ]);
    
        Producto::create($request->all());
        return redirect()->route('productos.index');
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
