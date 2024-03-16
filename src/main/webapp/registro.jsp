<%-- 
    Document   : registro
    Created on : 13/03/2024, 8:53:30 p. m.
    Author     : evo_l
--%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
       <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Navbar</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">

                    </ul>
                </div>
            </div>
        </nav>
    </header>
  <div class="container">
        <h2 class="mt-5 mb-4">Registro</h2>
        <form action="" method="POST">
            <div class="mb-3">
                <label for="usuario" class="form-label">Usuario:</label>
                <input type="text" class="form-control" id="usuario" name="usuario" required placeholder="pedrito123">
            </div>
            <div class="mb-3">
                <label for="contrasena" class="form-label">Contraseña:</label>
                <input type="password" class="form-control" id="contrasena" name="contrasena" required>
            </div>
            <div class="mb-3">
                <label for="correo" class="form-label">Correo Electrónico:</label>
                <input type="email" class="form-control" id="correo" name="correo" required placeholder="example@hotmail.com">
            </div>
            <div class="mb-3">
                <label for="nombres" class="form-label">Nombres:</label>
                <input type="text" class="form-control" id="nombres" name="nombres" required placeholder="Pedrito Andrés">
            </div>
            <div class="mb-3">
                <label for="apellidos" class="form-label">Apellidos:</label>
                <input type="text" class="form-control" id="apellidos" name="apellidos" required placeholder="Vélez Pérez">
            </div>
            <button type="submit" class="btn btn-primary">Registrar</button>
        </form>
    </div>
   
    
    <% 
        if ("POST".equals(request.getMethod())) {
            String username = request.getParameter("usuario");
            String password = request.getParameter("contrasena");
            String mail = request.getParameter("correo");
            String name = request.getParameter("nombres");
            String last_name = request.getParameter("apellidos");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/practicatres?user=root&password=");
                String consulta = "INSERT INTO Usuarios(nombre_usuario, contrasena, nombre, apellido, correo_electronico) VALUES ('" + username + "','" + password + "','" + name + "','" + last_name + "','" + mail + "')";
                PreparedStatement statement = con.prepareStatement(consulta);
                int consulta_satisfactoria = statement.executeUpdate();
                if (consulta_satisfactoria > 0) {
                    out.println("<p style=\"color:red;\">Registro exitoso. Por favor, inicie sesión.</p>");
                    response.sendRedirect("index.jsp");
                }
            } catch (Exception  e) {
                out.println("<p>Error al registrar usuario: " + e + "</p>");
            }
        }
    %>
     <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-hwwaGmg4Ct/+YS2bBhCjq8iq7rI1Nc8kbrKM0z7dEJThYxQyTKly1NPK9GI5m3jC" crossorigin="anonymous"></script>
</body>
</html>
