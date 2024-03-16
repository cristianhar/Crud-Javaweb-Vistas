
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
    <title>Editar usuario</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <div class="container mt-5">
        <div class="row">
            <div class="col-sm">
                <h2>Modificar Usuario</h2>
                <form action="" method="POST">
                    <div class="mb-3">
                        <label for="idUsuario" class="form-label">Usuario Seleccionado</label>
                        <select class="form-select" id="idUsuario" name="idUsuario" required disabled>
                            <% 
                                String selectedId = "";
                                String selectedcontrasena = ""; 
                                String selectedcorreo = ""; 
                                String selectednombre = ""; 
                                String selectedapellido = "";  
                                try {
                                    
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/practicatres?user=root&password=");
                                    Statement st = con.createStatement();
                                    ResultSet rs = st.executeQuery("SELECT id, nombre_usuario,contrasena,correo_electronico, nombre,apellido FROM usuarios");
                                    while(rs.next()) {
                                        // Obtener el ID seleccionado (si está presente en la solicitud)
                                            selectedId = request.getParameter("id");
                                        // Obtener la dirección y el teléfono correspondientes al ID seleccionado
                                        if (selectedId!= null && selectedId.equals(rs.getString("id"))) {
                                            selectedcontrasena = rs.getString("contrasena");
                                            selectedcorreo = rs.getString("correo_electronico");
                                            selectednombre = rs.getString("nombre");
                                            selectedapellido = rs.getString("apellido");
                                        }
                            %>
                                        <option  value="<%= rs.getInt("id") %>" <% if (selectedId != null && selectedId.equals(rs.getString("id"))) out.print("selected"); %>><%= rs.getString("nombre_usuario") %></option>
                            <%
                                    }
                                } catch (SQLException e) {
                                    out.println("Error al obtener la lista de usuarios: " + e.getMessage());
                                }
                            %>
                        </select>
                    </div>
      
                    <div class="mb-3">
                        <label for="contrasena" class="form-label">Contraseña</label>
                        <input type="text" class="form-control" id="contra" name="contra" placeholder="Nueva contraseña" value="<%= selectedcontrasena %>" required>
                    </div>

                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombres </label>
                        <input type="text" class="form-control" id="nombree" name="nombree" placeholder="Nuevos Nombres" value="<%= selectednombre %>" required>
                    </div>
                    <div class="mb-3">
                        <label for="apellido" class="form-label">Apellidos </label>
                        <input type="text" class="form-control" id="apellid" name="apellid" placeholder="Nuevos Apellidos" value="<%= selectedapellido %>" required>
                    </div>
                    <div class="mb-3">
                        <label for="correo" class="form-label">Correo Electronico</label>
                        <input type="text" class="form-control" id="correo" name="correo" placeholder="Nuevo Correo" value="<%= selectedcorreo %>" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Modificar</button>
                    <button type="reset" class="btn btn-danger">Resetear</button>
                </form>
                <%
                    if ("POST".equals(request.getMethod())) {
                                         
                        
                            String idUsuario = request.getParameter("id");
                            String password = request.getParameter("contra");
                            String name = request.getParameter("nombree");
                            String lastname = request.getParameter("apellid");
                            String email = request.getParameter("correo");
                           
                          
                            try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/practicatres?user=root&password=");
                            String consulta = "UPDATE usuarios SET contrasena = '" + password + "', nombre = '" + name + "', apellido = '" + lastname + "', correo_electronico = '" + email + "' WHERE id = '" + idUsuario + "'";
                            PreparedStatement statement = con.prepareStatement(consulta);       
                            int consulta_satisfactoria = statement.executeUpdate();
                            if (consulta_satisfactoria > 0) 
                            {   
                                out.println("<p style=\"color:green;\">Edicion  exitosa..</p>");
                                response.sendRedirect("usuarios.jsp");  
                            }
                            } catch (SQLException e) {
                                // Manejar los errores de manera elegante (por ejemplo, mostrar un mensaje de error)
                                out.println("Error al actualizar empleado: " + e.getMessage());
                            }
                    
                    }
                %>
            </div>
        </div>
    </div>
</body>
</html>
