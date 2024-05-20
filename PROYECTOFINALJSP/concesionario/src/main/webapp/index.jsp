<%-- index.jsp (proyecto Incrementa5) --%>
<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page import="users.User"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Car-themed background */
        body {
            background-image: url('assets/img/coche1.jfif'); /* Replace 'car-login-background.jpg' with the path to your car-themed login background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
        }

        /* Styles for the car login form */
        .car-login-form {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            border-radius: 10px;
            padding: 20px;
            max-width: 400px;
            margin: auto;
            margin-top: 100px; /* Adjust as needed */
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.75); /* Shadow effect */
        }

        .car-login-form h1 {
            color: #333; /* Dark text color */
            text-align: center;
            margin-bottom: 30px;
        }

        .car-login-form label {
            color: #333; /* Dark text color */
        }

        .car-login-form .form-control {
            border-radius: 5px;
        }

        .car-login-form .btn {
            width: 100%;
            padding: 10px;
            font-size: 1rem;
            background-color: #000000; /* Blue button color */
            border: none;
            border-radius: 5px;
            color: #fff; /* White button text color */
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .car-register-form .btn:hover {
            background-color: #333333; /* Negro más oscuro al pasar el mouse */
        }

        .car-login-form .form-check {
            margin-top: 15px;
            text-align: center;
        }

        .car-login-form .form-check a {
            color: #333; /* Dark text color */
        }

        .car-login-form .form-check a:hover {
            color: #000000; /* Blue on hover */
            text-decoration: none;
        }

        .car-login-form .text-body-secondary {
            color: #333; /* Dark text color */
            text-align: center;
            margin-top: 30px;
        }
    </style>
</head>
<body>
<main class="car-login-form">
    <form method="POST" action="login.jsp">
        <h1 class="h3 mb-3 fw-normal">Por favor inicie sesión</h1>

        <div class="form-group">
            <label for="username">Usuario</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="juan">
        </div>

        <div class="form-group">
            <label for="password">Contraseña</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Password">
        </div>

        <div class="form-check">
            <a href="register.jsp">Quiero registrarme</a>
        </div>

        <button class="btn btn-primary mt-3" type="submit">Iniciar sesión</button>
        <p class="mt-5 mb-3 text-body-secondary">&copy; 2024</p>
    </form>
</main>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
