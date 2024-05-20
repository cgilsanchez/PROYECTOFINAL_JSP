<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Car-themed background */
        body {
            background-image: url('assets/img/coche3.jpg'); /* Reemplaza 'car-home-background.jpg' con la ruta de tu imagen de fondo temática de coche */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            margin: 0;
            display: flex;
        }

        /* Estilos para el menú lateral */
        .sidebar {
            height: 100%;
            width: 250px;
            background-color: #333; /* Color de fondo del menú */
            overflow-x: hidden;
            padding-top: 20px;
            position: fixed;
            left: 0;
            top: 0;
        }

        .sidebar a {
            padding: 10px 15px;
            text-decoration: none;
            font-size: 1.2rem;
            color: #fff; /* Color de texto blanco */
            display: block;
        }

        .sidebar a:hover {
            background-color: #555; /* Color de fondo del enlace al pasar el mouse */
        }

        .sidebar .active {
            background-color: #007bff; /* Color de fondo del enlace activo */
        }

        /* Estilos para la capa de superposición */
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5); /* Fondo semitransparente */
            z-index: 999;
            display: none;
        }

        /* Estilos para el contenido principal */
        .content {
            flex-grow: 1;
            padding: 20px;
            color: #fff; /* Color de texto blanco */
            text-align: center;
        }

        .content h1 {
            font-size: 3rem;
        }

        .content p {
            font-size: 1.5rem;
            margin-top: 20px;
        }

        .content a {
            color: #fff; /* Color de texto blanco */
            text-decoration: underline;
        }

        .content a:hover {
            color: #ccc; /* Color de texto gris claro al pasar el mouse */
            text-decoration: none;
        }

        /* Estilos para el formulario de actualización de usuario */
        #update-form {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            padding: 20px;
            max-width: 400px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.75); /* Efecto de sombra */
        }
    </style>
</head>
<body>
<div class="sidebar">
    <a href="#" id="home">Inicio</a>
    <a href="#" id="update-user">Actualizar Usuario</a>
    <a href="#" id="logout">Cerrar Sesión</a>
</div>


<div class="overlay" id="overlay">
    <div id="update-form">
        <h2>Actualizar Usuario</h2>
        <form>
            <div class="form-group">
                <label for="username">Nombre de Usuario</label>
                <input type="text" class="form-control" id="username" placeholder="Nombre de Usuario">
            </div>
            <div class="form-group">
                <label for="password">Contraseña</label>
                <input type="password" class="form-control" id="password" placeholder="Contraseña">
            </div>
            <button type="submit" class="btn btn-primary">Actualizar</button>
        </form>
    </div>
</div>

<div class="content">
    <h1>Bienvenido a la Página Principal</h1>
    <p>¡Has iniciado sesión o te has registrado exitosamente!</p>
    <p>Puedes empezar a explorar nuestro sitio web y disfrutar de nuestros servicios.</p>
    <p><a href="data.jsp">Listado de Coches</a></p>
</div>

<!-- Bootstrap JavaScript y dependencias -->
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script>
    document.getElementById("logout").addEventListener("click", function(event) {
        event.preventDefault();
        window.location.href = "logout.jsp"; // Reemplaza "logout.jsp" con la ruta correcta para cerrar sesión
    });

    document.getElementById("update-user").addEventListener("click", function(event) {
        event.preventDefault();
        document.getElementById("overlay").style.display = "block";
    });

    document.getElementById("home").classList.add("active"); // Marcar "Inicio" como activo por defecto
</script>
</body>
</html>




