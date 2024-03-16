<%-- 
    Document   : confirmaciondelete
    Created on : 15/03/2024, 7:35:01 p. m.
    Author     : evo_l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Confirmación de eliminación</title>
</head>
<body>
    <script>
        var confirmDelete = confirm("¿Estás seguro de que deseas eliminar este usuario?");
        if (confirmDelete) {
            window.location.href = "eliminar.jsp?id=<%= request.getParameter("id") %>";
        } else {
            window.location.href = "usuarios.jsp";
        }
    </script>
</body>
</html>