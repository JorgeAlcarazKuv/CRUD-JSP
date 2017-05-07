<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edita Elemento</title>
</head>
<body>
  <%
    Class.forName("com.mysql.jdbc.Driver");
  			Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/crud-jsp", "root", "");
  			Statement sentencia = conexion.createStatement();
  			sentencia.execute("UPDATE tarjetasgraficas SET Modelo='" + request.getParameter("modelo") + "', Marca='"
  					+ request.getParameter("marca") + "', Precio='" + request.getParameter("precio") + "' WHERE Codigo="
  					+ request.getParameter("codigo"));
  %>
  <script>
      document.location = "listado.jsp"
    </script>
</body>
</html>