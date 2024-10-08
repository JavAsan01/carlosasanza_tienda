<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\AuthController;

/*Route::get('/', function () {
    return view('welcome');
});*/

// Inicio de sesión
Route::get('/', [AuthController::class, 'showLoginForm'])->name('login');
// Procesar
Route::post('/', [AuthController::class, 'login']);


//PRODUCTOS
Route::resource('productos.list', ProductoController::class);
Route::resource('productos.create', ProductoController::class);
Route::resource('productos.admin.update', ProductoController::class);

Route::get('/productos/create', [ProductoController::class, 'create'])->middleware('admin');

