<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SilkRoad Edit</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css">
<link rel="stylesheet" href="css/styles.css">
<link href="http://fonts.googleapis.com/css?family=Warnes" rel="stylesheet" type="text/css" />
</head>
<body>
  <div class="cartel">
    <a href="index.jsp">Silk Road</a>
  </div>
  <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/crud-jsp", "root",
        "");
    Statement sentencia = conexion.createStatement();
    ResultSet rs = sentencia.executeQuery(
        "SELECT * FROM tarjetasgraficas WHERE Codigo=" + request.getParameter("Codigo"));
    rs.next();
  %>
  <div class="formulario">
    <form action="editaElementoQuery.jsp">
      <div class="row">
        <div class="input-field col s12">
          <input type="hidden" name="codigo" value="<%=rs.getInt(1)%>" /> <input name="marca"
            type="text" class="validate" required value="<%=rs.getString(3)%>"> <label
            for="marca">Marca</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input name="modelo" type="text" class="validate" required value="<%=rs.getString(2)%>">
          <label for="modelo">Modelo</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <input type="number" name="precio" min="0" step="0.01" required
            value="<%=rs.getFloat(4)%>"> <label for="precio">Precio</label>
        </div>
      </div>
      <div class="row">
        <div class="input-field col s12">
          <button class="btn waves-effect waves-light light-green accent-3" type="submit" name="action">
            Editar<i class="material-icons right">send</i>
          </button>
        </div>
      </div>
    </form>
  </div>
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>
  <script src="js/scripts.js"></script>
</body>
</html>