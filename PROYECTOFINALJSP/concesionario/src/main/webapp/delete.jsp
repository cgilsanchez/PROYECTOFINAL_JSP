<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar Coche</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Eliminar Coche</h1>
            <% 
                String idString = request.getParameter("id");
                if (idString != null) {
                    int id = Integer.parseInt(idString);
                    String url = "jdbc:mysql://localhost:3306/concesionario";
                    String usuario = "juan";
                    String contraseña = "12345678";
                    
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection(url, usuario, contraseña);
                        PreparedStatement stmt = con.prepareStatement("DELETE FROM concesionario WHERE id = ?");
                        stmt.setInt(1, id);
                        
                        int filasAfectadas = stmt.executeUpdate();
                        
                        if (filasAfectadas > 0) {
                            out.println("El coche con ID " + id + " ha sido eliminado correctamente.");
                        } else {
                            out.println("Error: No se encontró ningún coche con el ID " + id + ".");
                        }
                        
                        // Cerrar conexiones
                        stmt.close();
                        con.close();
                    } catch (Exception e) {
                        out.println("Error: " + e.getMessage());
                    }
                } else {
                    // Si no se proporciona un ID, mostrar un mensaje de error
                    out.println("Error: No se proporcionó un ID válido.");
                }
            %>
            <div class="text-right mt-3">
                <a href="data.jsp" class="btn btn-primary">Volver al Listado</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>
