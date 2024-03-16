
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contáctanos</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
     <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Navbar</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                         <li class="nav-item">
                            <a class="nav-link" href="home.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contacto.jsp">Contactanos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="usuarios.jsp">Usuarios Registrados</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="buscar.jsp">Buscar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contacto_mensajes.jsp">Mensajes de Contactanos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Cerrar Sesion</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="container">
        <h2 class="mt-5 mb-4">Contáctanos</h2>
        <form action="" method="POST">
            <div class="mb-3">
                <label for="asunto" class="form-label">Asunto:</label>
                <input type="text" class="form-control" id="asunto" name="asunto" required>
            </div>
            <div class="mb-3">
                <label for="correo" class="form-label">Correo Electrónico:</label>
                <input type="email" class="form-control" id="correo" name="correo" required>
            </div>
            <div class="mb-3">
                <label for="fecha" class="form-label">Fecha de Envío:</label>
                <input type="date" class="form-control" id="fecha" name="fecha" required>
            </div>
            <div class="mb-3">
                <label for="mensaje" class="form-label">Mensaje:</label>
                <textarea class="form-control" id="mensaje" name="mensaje" rows="5" required></textarea>
            </div>
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre Completo:</label>
                <input type="text" class="form-control" id="nombre" name="nombre" required>
            </div>
            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
    </div>
     
    <% 
            if ("POST".equals(request.getMethod())) 
            {
                String asunto = request.getParameter("asunto");
                String email = request.getParameter("correo");
                String date = request.getParameter("fecha");
                String message = request.getParameter("mensaje");
                String name = request.getParameter("nombre");

            try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/practicatres?user=root&password=");
            String consulta = "INSERT INTO MensajesContacto (asunto,correo_electronico,fecha_envio,mensaje,nombre) VALUES  ('" + asunto + "','" + email + "','" + date + "','" + message + "','" + name + "')";
            PreparedStatement statement = con.prepareStatement(consulta);
            int consulta_satisfactoria = statement.executeUpdate();
            if (consulta_satisfactoria > 0) {
            
                out.println("<p style=\"color:green;\">Mensaje enviado exitosamente!</p>");
                response.sendRedirect("contacto_mensajes.jsp");
                
            }
            } catch (Exception  e) {
                out.println("<p>Error al enviar el mensaje " + e + "</p>");
            }
        }
    %>
   
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-hwwaGmg4Ct/+YS2bBhCjq8iq7rI1Nc8kbrKM0z7dEJThYxQyTKly1NPK9GI5m3jC" crossorigin="anonymous"></script>
</body>
</html>