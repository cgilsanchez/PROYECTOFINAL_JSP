<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Datos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Listado de Coches</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Color</th>
                        <th>Matrícula</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        // Conexión a la base de datos (Ajusta la URL, usuario y contraseña según tu configuración)
                        String url = "jdbc:mysql://localhost:3306/concesionario";
                        String usuario = "juan";
                        String contraseña = "12345678";
                        
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection(url, usuario, contraseña);
                            Statement stmt = con.createStatement();
                            ResultSet rs = stmt.executeQuery("SELECT * FROM concesionario");
                            
                            // Iterar a través de los resultados y mostrarlos en la tabla
                            while (rs.next()) {
                    %>
                                <tr>
                                    <td><%= rs.getInt("id") %></td>
                                    <td><%= rs.getString("marca") %></td>
                                    <td><%= rs.getString("modelo") %></td>
                                    <td><%= rs.getString("color") %></td>
                                    <td><%= rs.getString("matricula") %></td>
                                    <td>
                                        <!-- Botón para editar -->
                                        <form class="d-inline" method="POST" action="edit.jsp">
                                        <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
                                        <button type="submit" class="btn btn-primary btn-sm mr-2">Editar</button>
                                        </form>
                                        <!-- Botón para eliminar -->
                                        <form class="d-inline" method="POST" action="delete.jsp" onsubmit="return confirm('¿Estás seguro de que deseas eliminar este elemento?')">
                                        <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
                                        <button type="submit" class="btn btn-danger btn-sm">Eliminar</button>
                                        </form>

                                    </td>
                                </tr>
                    <% 
                            }
                            
                            // Cerrar conexiones
                            rs.close();
                            stmt.close();
                            con.close();
                        } catch (Exception e) {
                            out.println("Error: " + e.getMessage());
                        }
                    %>
                </tbody>
            </table>
            
            <form class="d-inline" method="POST" action="create.jsp">
    <button type="submit" class="btn btn-success">Agregar</button>
</form>

        <div class="text-right mt-3">
                <a href="home.jsp" class="btn btn-primary">Volver al inicio</a>
            </div>

        </div>
    </div>
</div>
</body>
</html>
