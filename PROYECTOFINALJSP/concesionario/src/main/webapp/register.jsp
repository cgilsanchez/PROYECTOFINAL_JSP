<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Car-themed background */
        body {
            background-image: url('assets/img/coche1.jfif'); /* Reemplaza 'car-register-background.jpg' con la ruta de tu imagen de fondo temática de coche */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
        }

        /* Estilos para el formulario de registro de coche */
        .car-register-form {
            background-color: rgba(255, 255, 255, 0.9); /* Fondo blanco semitransparente */
            border-radius: 10px;
            padding: 20px;
            max-width: 400px;
            margin: auto;
            margin-top: 100px; /* Ajusta según sea necesario */
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.75); /* Efecto de sombra */
        }

        .car-register-form h1 {
            color: #333; /* Color de texto oscuro */
            text-align: center;
            margin-bottom: 30px;
        }

        .car-register-form label {
            color: #333; /* Color de texto oscuro */
        }

        .car-register-form .form-control {
            border-radius: 5px;
        }

        .car-register-form .btn {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            background-color: #000000; /* Color azul del botón */
            border: none;
            border-radius: 5px;
            color: #fff; /* Color de texto blanco del botón */
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

          .car-register-form .btn:hover {
            background-color: #333333; /* Negro más oscuro al pasar el mouse */
        }

        .car-register-form .form-check {
            margin-top: 15px;
            text-align: center;
        }

        .car-register-form .form-check a {
            color: #333; /* Color de texto oscuro */
        }

        .car-register-form .form-check a:hover {
            color: #000000; /* Azul al pasar el mouse */
            text-decoration: none;
        }

        .car-register-form .text-body-secondary {
            color: #333; /* Color de texto oscuro */
            text-align: center;
            margin-top: 30px;
        }
    </style>
</head>
<body>
<main class="car-register-form">
  <form method="POST" action="doregistration.jsp">
    <h1 class="h3 mb-3 fw-normal">Por favor regístrese</h1>

    <div class="form-floating">
      <input type="text" class="form-control" name="name" id="floatingInput1" placeholder="Nombre">
      <label for="floatingInput1">Nombre</label>
    </div>
    <div class="form-floating">
      <input type="text" class="form-control" name="surname" id="floatingInput2" placeholder="Password">
      <label for="floatingInput2">Apellidos</label>
    </div>
    <div class="form-floating">
      <input type="text" class="form-control" name="username" id="floatingInpu3t" placeholder="Usuario">
      <label for="floatingInput3">usuario</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="password" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">contraseña</label>
    </div>

    <div class="form-check text-start my-3">
      <a href="login.jsp">
        Quiero iniciar sesión
      </a>
    </div>
    <button class="btn btn-primary w-100 py-2" type="submit">Regístrame</button>
    <p class="mt-5 mb-3 text-body-secondary">&copy; 2024</p>
  </form>
</main>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
