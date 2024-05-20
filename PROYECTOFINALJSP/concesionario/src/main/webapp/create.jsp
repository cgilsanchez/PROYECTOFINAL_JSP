<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar Coche</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h2>Agregar Nuevo Coche</h2>
            <%
                // Procesar el formulario si se ha enviado
                if ("POST".equalsIgnoreCase(request.getMethod())) {
                    String marca = request.getParameter("marca");
                    String modelo = request.getParameter("modelo");
                    String color = request.getParameter("color");
                    String matricula = request.getParameter("matricula");

                    // Validar que los parámetros no sean nulos ni vacíos
                    if (marca != null && modelo != null && color != null && matricula != null && 
                        !marca.isEmpty() && !modelo.isEmpty() && !color.isEmpty() && !matricula.isEmpty()) {
                        
                        // Conexión a la base de datos (Ajusta la URL, usuario y contraseña según tu configuración)
                        String url = "jdbc:mysql://localhost:3306/concesionario";
                        String usuario = "juan";
                        String contraseña = "12345678";

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection(url, usuario, contraseña);

                            // Consulta para insertar el nuevo registro
                            String query = "INSERT INTO concesionario (marca, modelo, color, matricula) VALUES (?, ?, ?, ?)";
                            PreparedStatement pstmt = con.prepareStatement(query);
                            pstmt.setString(1, marca);
                            pstmt.setString(2, modelo);
                            pstmt.setString(3, color);
                            pstmt.setString(4, matricula);

                            int rowsInserted = pstmt.executeUpdate();

                            if (rowsInserted > 0) {
                                out.println("<div class='alert alert-success' role='alert'>Nuevo coche agregado correctamente.</div>");
                            } else {
                                out.println("<div class='alert alert-danger' role='alert'>No se pudo agregar el nuevo coche.</div>");
                            }

                            // Cerrar conexiones
                            pstmt.close();
                            con.close();
                        } catch (Exception e) {
                            out.println("Error: " + e.getMessage());
                        }
                    } else {
                        out.println("<div class='alert alert-danger' role='alert'>Todos los campos son obligatorios.</div>");
                    }
                }
            %>
            <form method="POST" action="create.jsp">
                <div class="form-group">
                    <label for="marca">Marca</label>
                    <input type="text" class="form-control" id="marca" name="marca" required>
                </div>
                <div class="form-group">
                    <label for="modelo">Modelo</label>
                    <input type="text" class="form-control" id="modelo" name="modelo" required>
                </div>
                <div class="form-group">
                    <label for="color">Color</label>
                    <input type="text" class="form-control" id="color" name="color" required>
                </div>
                <div class="form-group">
                    <label for="matricula">Matrícula</label>
                    <input type="text" class="form-control" id="matricula" name="matricula" required>
                </div>
                <button type="submit" class="btn btn-success">Guardar Cambios</button>
            </form>
            <div class="text-right mt-3">
                <a href="data.jsp" class="btn btn-primary">Volver al Listado</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
