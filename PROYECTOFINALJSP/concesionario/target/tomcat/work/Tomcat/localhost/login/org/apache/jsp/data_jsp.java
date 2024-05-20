/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2024-05-16 11:32:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class data_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"es\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Datos</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("        <div class=\"col-md-12\">\r\n");
      out.write("            <h1>Listado de Coches</h1>\r\n");
      out.write("            <table class=\"table\">\r\n");
      out.write("                <thead>\r\n");
      out.write("                    <tr>\r\n");
      out.write("                        <th>ID</th>\r\n");
      out.write("                        <th>Marca</th>\r\n");
      out.write("                        <th>Modelo</th>\r\n");
      out.write("                        <th>Color</th>\r\n");
      out.write("                        <th>Matrícula</th>\r\n");
      out.write("                        <th>Acciones</th>\r\n");
      out.write("                    </tr>\r\n");
      out.write("                </thead>\r\n");
      out.write("                <tbody>\r\n");
      out.write("                    ");
 
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
                    
      out.write("\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                    <td>");
      out.print( rs.getInt("id") );
      out.write("</td>\r\n");
      out.write("                                    <td>");
      out.print( rs.getString("marca") );
      out.write("</td>\r\n");
      out.write("                                    <td>");
      out.print( rs.getString("modelo") );
      out.write("</td>\r\n");
      out.write("                                    <td>");
      out.print( rs.getString("color") );
      out.write("</td>\r\n");
      out.write("                                    <td>");
      out.print( rs.getString("matricula") );
      out.write("</td>\r\n");
      out.write("                                    <td>\r\n");
      out.write("                                        <!-- Botón para editar -->\r\n");
      out.write("                                        <form class=\"d-inline\" method=\"POST\" action=\"edit.jsp\">\r\n");
      out.write("                                        <input type=\"hidden\" name=\"id\" value=\"");
      out.print( rs.getInt("id") );
      out.write("\">\r\n");
      out.write("                                        <button type=\"submit\" class=\"btn btn-primary btn-sm mr-2\">Editar</button>\r\n");
      out.write("                                        </form>\r\n");
      out.write("                                        <!-- Botón para eliminar -->\r\n");
      out.write("                                        <form class=\"d-inline\" method=\"POST\" action=\"delete.jsp\" onsubmit=\"return confirm('¿Estás seguro de que deseas eliminar este elemento?')\">\r\n");
      out.write("                                        <input type=\"hidden\" name=\"id\" value=\"");
      out.print( rs.getInt("id") );
      out.write("\">\r\n");
      out.write("                                        <button type=\"submit\" class=\"btn btn-danger btn-sm\">Eliminar</button>\r\n");
      out.write("                                        </form>\r\n");
      out.write("\r\n");
      out.write("                                    </td>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                    ");
 
                            }
                            
                            // Cerrar conexiones
                            rs.close();
                            stmt.close();
                            con.close();
                        } catch (Exception e) {
                            out.println("Error: " + e.getMessage());
                        }
                    
      out.write("\r\n");
      out.write("                </tbody>\r\n");
      out.write("            </table>\r\n");
      out.write("            \r\n");
      out.write("            <form class=\"d-inline\" method=\"POST\" action=\"create.jsp\">\r\n");
      out.write("    <button type=\"submit\" class=\"btn btn-success\">Agregar</button>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"text-right mt-3\">\r\n");
      out.write("                <a href=\"home.jsp\" class=\"btn btn-primary\">Volver al inicio</a>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}