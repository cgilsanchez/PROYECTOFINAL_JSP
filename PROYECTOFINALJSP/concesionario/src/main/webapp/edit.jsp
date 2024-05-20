<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Elemento</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Editar Elemento</h1>
            <%
                // Obtener el ID del elemento a editar desde la solicitud
                int id = Integer.parseInt(request.getParameter("id"));
                
                // Conexión a la base de datos (Ajusta la URL, usuario y contraseña según tu configuración)
                String url = "jdbc:mysql://localhost:3306/concesionario";
                String usuario = "juan";
                String contraseña = "12345678";
                
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection(url, usuario, contraseña);
                    Statement stmt = con.createStatement();
                    
                    // Consulta para obtener los datos del elemento
                    ResultSet rs = stmt.executeQuery("SELECT * FROM concesionario WHERE id=" + id);
                    
                    if (rs.next()) {
                        // Mostrar formulario para editar el elemento
            %>
                        <form method="POST" action="update.jsp">
                            <input type="hidden" name="id" value="<%= id %>">
                            <div class="form-group">
                                <label for="marca">Marca</label>
                                <input type="text" class="form-control" id="marca" name="marca" value="<%= rs.getString("marca") %>">
                            </div>
                            <div class="form-group">
                                <label for="modelo">Modelo</label>
                                <input type="text" class="form-control" id="modelo" name="modelo" value="<%= rs.getString("modelo") %>">
                            </div>
                            <div class="form-group">
                                <label for="color">Color</label>
                                <input type="text" class="form-control" id="color" name="color" value="<%= rs.getString("color") %>">
                            </div>
                            <div class="form-group">
                                <label for="matricula">Matrícula</label>
                                <input type="text" class="form-control" id="matricula" name="matricula" value="<%= rs.getString("matricula") %>">
                            </div>
                            <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                        </form>
            <%
                    } else {
                        out.println("Elemento no encontrado.");
                    }
                    
                    // Cerrar conexiones
                    rs.close();
                    stmt.close();
                    con.close();
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
        </div>
    </div>
</div>
</body>
</html>
