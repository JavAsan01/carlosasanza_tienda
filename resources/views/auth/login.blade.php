<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión</title>
</head>
<body>
    <h1>Iniciar Sesión</h1>

    <!-- Muestra errores de validación -->
    @if($errors->any())
        <div>
            <ul>
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <!-- Formulario de inicio de sesión -->
    <form action="{{ route('login') }}" method="POST">
        @csrf
        <div>
            <label for="email">Correo Electrónico:</label>
            <input type="email" name="email" id="email" required value="{{ old('email') }}">
        </div>

        <div>
            <label for="password">Contraseña:</label>
            <input type="password" name="password" id="password" required>
        </div>

        <div>
            <button type="submit">Iniciar Sesión</button>
        </div>
    </form>
</body>
</html>
