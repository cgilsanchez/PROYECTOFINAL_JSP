/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2024-05-16 06:32:07 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"es\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Inicio</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\r\n");
      out.write("    <style>\r\n");
      out.write("        /* Car-themed background */\r\n");
      out.write("        body {\r\n");
      out.write("            background-image: url('assets/img/coche3.jpg'); /* Reemplaza 'car-home-background.jpg' con la ruta de tu imagen de fondo temática de coche */\r\n");
      out.write("            background-size: cover;\r\n");
      out.write("            background-position: center;\r\n");
      out.write("            background-repeat: no-repeat;\r\n");
      out.write("            height: 100vh;\r\n");
      out.write("            margin: 0;\r\n");
      out.write("            display: flex;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Estilos para el menú lateral */\r\n");
      out.write("        .sidebar {\r\n");
      out.write("            height: 100%;\r\n");
      out.write("            width: 250px;\r\n");
      out.write("            background-color: #333; /* Color de fondo del menú */\r\n");
      out.write("            overflow-x: hidden;\r\n");
      out.write("            padding-top: 20px;\r\n");
      out.write("            position: fixed;\r\n");
      out.write("            left: 0;\r\n");
      out.write("            top: 0;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .sidebar a {\r\n");
      out.write("            padding: 10px 15px;\r\n");
      out.write("            text-decoration: none;\r\n");
      out.write("            font-size: 1.2rem;\r\n");
      out.write("            color: #fff; /* Color de texto blanco */\r\n");
      out.write("            display: block;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .sidebar a:hover {\r\n");
      out.write("            background-color: #555; /* Color de fondo del enlace al pasar el mouse */\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .sidebar .active {\r\n");
      out.write("            background-color: #007bff; /* Color de fondo del enlace activo */\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Estilos para la capa de superposición */\r\n");
      out.write("        .overlay {\r\n");
      out.write("            position: fixed;\r\n");
      out.write("            top: 0;\r\n");
      out.write("            left: 0;\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            height: 100%;\r\n");
      out.write("            background-color: rgba(0, 0, 0, 0.5); /* Fondo semitransparente */\r\n");
      out.write("            z-index: 999;\r\n");
      out.write("            display: none;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Estilos para el contenido principal */\r\n");
      out.write("        .content {\r\n");
      out.write("            flex-grow: 1;\r\n");
      out.write("            padding: 20px;\r\n");
      out.write("            color: #fff; /* Color de texto blanco */\r\n");
      out.write("            text-align: center;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .content h1 {\r\n");
      out.write("            font-size: 3rem;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .content p {\r\n");
      out.write("            font-size: 1.5rem;\r\n");
      out.write("            margin-top: 20px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .content a {\r\n");
      out.write("            color: #fff; /* Color de texto blanco */\r\n");
      out.write("            text-decoration: underline;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .content a:hover {\r\n");
      out.write("            color: #ccc; /* Color de texto gris claro al pasar el mouse */\r\n");
      out.write("            text-decoration: none;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Estilos para el formulario de actualización de usuario */\r\n");
      out.write("        #update-form {\r\n");
      out.write("            position: absolute;\r\n");
      out.write("            top: 50%;\r\n");
      out.write("            left: 50%;\r\n");
      out.write("            transform: translate(-50%, -50%);\r\n");
      out.write("            background-color: rgba(255, 255, 255, 0.9);\r\n");
      out.write("            border-radius: 10px;\r\n");
      out.write("            padding: 20px;\r\n");
      out.write("            max-width: 400px;\r\n");
      out.write("            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.75); /* Efecto de sombra */\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"sidebar\">\r\n");
      out.write("    <a href=\"#\" id=\"home\">Inicio</a>\r\n");
      out.write("    <a href=\"#\" id=\"update-user\">Actualizar Usuario</a>\r\n");
      out.write("    <a href=\"#\" id=\"logout\">Cerrar Sesión</a>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"overlay\" id=\"overlay\">\r\n");
      out.write("    <div id=\"update-form\">\r\n");
      out.write("        <h2>Actualizar Usuario</h2>\r\n");
      out.write("        <form>\r\n");
      out.write("            <div class=\"form-group\">\r\n");
      out.write("                <label for=\"username\">Nombre de Usuario</label>\r\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"username\" placeholder=\"Nombre de Usuario\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"form-group\">\r\n");
      out.write("                <label for=\"password\">Contraseña</label>\r\n");
      out.write("                <input type=\"password\" class=\"form-control\" id=\"password\" placeholder=\"Contraseña\">\r\n");
      out.write("            </div>\r\n");
      out.write("            <button type=\"submit\" class=\"btn btn-primary\">Actualizar</button>\r\n");
      out.write("        </form>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"content\">\r\n");
      out.write("    <h1>Bienvenido a la Página Principal</h1>\r\n");
      out.write("    <p>¡Has iniciado sesión o te has registrado exitosamente!</p>\r\n");
      out.write("    <p>Puedes empezar a explorar nuestro sitio web y disfrutar de nuestros servicios.</p>\r\n");
      out.write("    <p><a href=\"data.jsp\">Listado de Coches</a></p>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- Bootstrap JavaScript y dependencias -->\r\n");
      out.write("<script src=\"assets/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("<script>\r\n");
      out.write("    document.getElementById(\"logout\").addEventListener(\"click\", function(event) {\r\n");
      out.write("        event.preventDefault();\r\n");
      out.write("        window.location.href = \"logout.jsp\"; // Reemplaza \"logout.jsp\" con la ruta correcta para cerrar sesión\r\n");
      out.write("    });\r\n");
      out.write("\r\n");
      out.write("    document.getElementById(\"update-user\").addEventListener(\"click\", function(event) {\r\n");
      out.write("        event.preventDefault();\r\n");
      out.write("        document.getElementById(\"overlay\").style.display = \"block\";\r\n");
      out.write("    });\r\n");
      out.write("\r\n");
      out.write("    document.getElementById(\"home\").classList.add(\"active\"); // Marcar \"Inicio\" como activo por defecto\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
