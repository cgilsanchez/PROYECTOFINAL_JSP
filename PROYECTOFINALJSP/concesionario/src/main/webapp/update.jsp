<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actualizar Elemento</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Actualizar Elemento</h1>
            <%
                // Obtener los datos enviados desde el formulario de edición
                int id = Integer.parseInt(request.getParameter("id"));
                String marca = request.getParameter("marca");
                String modelo = request.getParameter("modelo");
                String color = request.getParameter("color");
                String matricula = request.getParameter("matricula");
                
                // Conexión a la base de datos (Ajusta la URL, usuario y contraseña según tu configuración)
                String url = "jdbc:mysql://localhost:3306/concesionario";
                String usuario = "juan";
                String contraseña = "12345678";
                
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(url, usuario, contraseña);
                    
                    // Consulta para actualizar el registro
                    String query = "UPDATE concesionario SET marca=?, modelo=?, color=?, matricula=? WHERE id=?";
                    PreparedStatement pstmt = con.prepareStatement(query);
                    pstmt.setString(1, marca);
                    pstmt.setString(2, modelo);
                    pstmt.setString(3, color);
                    pstmt.setString(4, matricula);
                    pstmt.setInt(5, id);
                    
                    int rowsUpdated = pstmt.executeUpdate();
                    
                    if (rowsUpdated > 0) {
                        out.println("<div class='alert alert-success' role='alert'>Registro actualizado correctamente.</div>");
                    } else {
                        out.println("<div class='alert alert-danger' role='alert'>No se pudo actualizar el registro.</div>");
                    }
                    
                    // Cerrar conexiones
                    pstmt.close();
                    con.close();
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
            <a href="data.jsp" class="btn btn-primary">Volver al Listado</a>
        </div>
    </div>
</div>
</body>
</html>
