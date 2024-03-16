<%-- 
    Document   : login
    Created on : 13/03/2024, 8:53:20 p. m.
    Author     : evo_l
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Inicio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
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

                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="container">
        <h2 class="mt-5 mb-4">Iniciar Sesión</h2>
        <form action="" method="POST">
            <div class="mb-3">
                <label for="usuario" class="form-label">Usuario:</label>
                <input type="text" class="form-control" id="usuario" name="usuario" required>
            </div>
            <div class="mb-3">
                <label for="contrasena" class="form-label">Contraseña:</label>
                <input type="password" class="form-control" id="contrasena" name="contrasena" required>
            </div>
            <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
        </form>
        <h4 class="mt-3">¿Eres nuevo usuario? <a href="registro.jsp">Regístrate aquí</a></h4>
    </div>
    
   <% 
    if ("POST".equals(request.getMethod())) {
        String username = request.getParameter("usuario");
        String password = request.getParameter("contrasena");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/practicatres?user=root&password=");
            String consulta = "SELECT * FROM usuarios WHERE nombre_usuario='" + username + "' AND contrasena ='" + password + "'";
            PreparedStatement statement = con.prepareStatement(consulta);
            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                // El usuario y la contraseña coinciden, redirige a la página principal
                response.sendRedirect("home.jsp");
            } else {
                // El usuario y la contraseña no coinciden, muestra un mensaje de error
                out.println("<p style=\"color:red;\">Usuario o contraseña incorrectos.</p>");
            }
        } catch (Exception  e) {
            out.println("<p>Error al iniciar sesión: " + e+ "</p>");
        }
    }
   %>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-hwwaGmg4Ct/+YS2bBhCjq8iq7rI1Nc8kbrKM0z7dEJThYxQyTKly1NPK9GI5m3jC" crossorigin="anonymous"></script>
</body>
</html>
