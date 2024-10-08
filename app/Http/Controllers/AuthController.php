<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    //
    public function showLoginForm()
    {
        return view('auth.login');
    }

    // Procesa el inicio de sesión
    public function login(Request $request)
    {
        // Validar los campos
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:6',
        ]);

        // Intentar iniciar sesión
        if (Auth::attempt($request->only('email', 'password'))) {
            return redirect()->intended('/dashboard');  // Redirigir a dashboard o página de inicio
        }

        // Si falla, redirigir de vuelta con un error
        return back()->withErrors([
            'email' => 'Las credenciales proporcionadas no coinciden con nuestros registros.',
        ]);
    }
}
