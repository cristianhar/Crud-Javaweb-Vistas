<%-- 
    Document   : usuarios
    Created on : 13/03/2024, 8:53:30 p. m.
    Author     : evo_l
--%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Start Page</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <div class="container mt-5">
        <div class="row">
            <div class="col-sm">
                <table class="table table-dark">
                    <thead>
                    <th scope="col" colspan="8">Usuarios</th>
                    <%-- <th scope="col"><a href="crear.jsp"><i class="fa fa-user-plus" aria-hidden="true"></i></a></th>--%>
                    
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Usuario</th>
                            <th scope="col">Contraseña</th>
                            <th scope="col">Nombres</th>
                            <th scope="col">Apellidos</th>
                            <th scope="col">Correo Electronico</th>
                            <th scope="col">Acciones</th>
                        </tr>
                     </thead>
                         <tbody>
                        <%
                        Connection con = null;
                        Statement st = null;
                        ResultSet rs = null;

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost/practicatres?user=root&password=");
                            st = con.createStatement();
                            rs = st.executeQuery("SELECT * FROM usuarios;");
                            while (rs.next()) {
                        %>
                                <tr>
                                    <th scope="row"><%= rs.getString(1) %></th>
                                    <td><%= rs.getString(2) %></td>
                                    <td><%= rs.getString(3) %></td>
                                    <td><%= rs.getString(4) %></td>
                                    <td><%= rs.getString(5) %></td>
                                    <td><%= rs.getString(6) %></td>
                                    <td>
                                    <a href="editarusuario.jsp?id=<%= rs.getString(1)%>&nombre_usuario=<%= rs.getString(2)%>&contrasena=<%= rs.getString(3)%>&nombre=<%= rs.getString(4)%>&apellido=<%= rs.getString(5)%>&correo_electronico=<%= rs.getString(6)%>"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                                   <a href="confirmaciondelete.jsp?id=<%= rs.getString(1) %>"><i class="fa fa-trash" aria-hidden="true"></i></a>

                                 </td>

                                </tr>
                        <%
                            }
                        } catch (Exception e) {
                            out.println("Error Mysql : " + e);
                        } 
                        %>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</body>
</html>
