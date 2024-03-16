<%-- 
    Document   : resultado
    Created on : 13/03/2024, 10:06:18 p. m.
    Author     : evo_l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Búsqueda</title>
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
        <h2 class="mt-5 mb-4">Búsqueda</h2>
        <form action="buscar.jsp" method="GET">
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Ingrese su búsqueda" aria-label="Ingrese su búsqueda" aria-describedby="button-addon2" name="busqueda" required>
                <button class="btn btn-primary" type="submit" id="button-addon2">Buscar</button>
            </div>
        </form>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-hwwaGmg4Ct/+YS2bBhCjq8iq7rI1Nc8kbrKM0z7dEJThYxQyTKly1NPK9GI5m3jC" crossorigin="anonymous"></script>
</body>
</html>
