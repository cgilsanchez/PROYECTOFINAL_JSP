<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" %>
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
            <%
                // Obtener los datos enviados desde el formulario de creación
                String marca = request.getParameter("marca");
                String modelo = request.getParameter("modelo");
                String color = request.getParameter("color");
                String matricula = request.getParameter("matricula");
                
                // Conexión a la base de datos (Ajusta la URL, usuario y contraseña según tu configuración)
                String url = "jdbc:mysql://localhost:3306/concesionario";
                String usuario = "juan";
                String contraseña = "12345678";
                
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection(url, usuario, contraseña);
                    
                    // Consulta para insertar el nuevo registro
                    String query = "INSERT INTO concesionario (marca, modelo, color, matricula) VALUES ('%s', '%s', '%s', '%s')";
                    PreparedStatement pstmt = con.prepareStatement(query);
                    pstmt.setString(1, marca);
                    pstmt.setString(2, modelo);
                    pstmt.setString(3, color);
                    pstmt.setString(4, matricula);
                    
                    int rowsInserted = pstmt.executeUpdate();
                    
                    if (rowsInserted > 0) {
            %>
                        <div class="alert alert-success" role="alert">Nuevo coche agregado correctamente.</div>
            <%
                    } else {
            %>
                        <div class="alert alert-danger" role="alert">No se pudo agregar el nuevo coche.</div>
            <%
                    }
                    
                    // Cerrar conexiones
                    pstmt.close();
                    con.close();
                } catch (Exception e) {
            %>
                    <div class="alert alert-danger" role="alert">Error: <%= e.getMessage() %></div>
            <%
                }
            %>
            <a href="data.jsp" class="btn btn-primary">Volver al Listado</a>
        </div>
    </div>
</div>
</body>
</html>
