<%-- 
    Document   : eliminar.jsp
    Created on : 15/03/2024, 7:23:51 p. m.
    Author     : evo_l
--%>

<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String id = request.getParameter("id");
    if (id != null) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con  = DriverManager.getConnection("jdbc:mysql://localhost/practicatres?user=root&password=");
            Statement st = con.createStatement();
            String consulta = "DELETE FROM usuarios WHERE id=" + id;
            int filaAfectada = st.executeUpdate(consulta);
            if (filaAfectada > 0) {
                out.println("<script>alert('Usuario eliminado correctamente');</script>");
            } else {
                out.println("<script>alert('Error al eliminar usuario');</script>");
            }
            response.sendRedirect("usuarios.jsp");
        } catch (Exception e) {
            out.println("Error MySQL: " + e);
        } 
    }
%>