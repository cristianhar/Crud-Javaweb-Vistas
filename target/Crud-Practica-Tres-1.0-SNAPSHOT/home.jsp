<%-- 
    Document   : home.jsp
    Created on : 13/03/2024, 9:32:22 p. m.
    Author     : evo_l
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bienvenido</title>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
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
    <section>
        <h2>Contenido principal</h2>
        <p>Bienvenido a nuestra aplicación. Aquí puedes encontrar información útil y recursos útiles.</p>
    </section>
    
    <footer>
        <p>&copy; 2024 - Todos los derechos reservados</p>
    </footer>
</body>
</html>

