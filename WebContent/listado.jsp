<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css">
<link rel="stylesheet" href="css/styles.css">
<link href="http://fonts.googleapis.com/css?family=Warnes" rel="stylesheet" type="text/css" />
<title>Inventario</title>
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
    ResultSet rs = sentencia.executeQuery("SELECT * FROM tarjetasgraficas");
    ResultSetMetaData rsmd = rs.getMetaData();
    int numColumnas = rsmd.getColumnCount();
  %>
  <table class="highlight">
    <thead>
      <tr>
        <th><%=rsmd.getColumnName(1)%></th>
        <th><%=rsmd.getColumnName(2)%></th>
        <th><%=rsmd.getColumnName(3)%></th>
        <th><%=rsmd.getColumnName(4)%></th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <form action="agregaElemento.jsp" method="get">
          <td></td>
          <td><input name="marca" type="text" class="validate" required></td>
          <td><input name="modelo" type="text" class="validate" required></td>
          <td><input type="number" name="precio" min="0" step="0.01" required></td>
          <td><button type="submit" style="background-color:rgba(224,242,241, 1)" class="btn waves-effect light-green accent-3">Añadir</button></td>
        </form>
      </tr>
      <%
        while (rs.next()) {
      %>
      <tr>
        <td><%=rs.getInt(1)%></td>

        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getFloat(4)%></td>
        <td style="width: 5em">
          <form method="get" action="editaElemento.jsp">
            <input type="hidden" name="Codigo" value="<%=rs.getInt("Codigo")%>" />
            <button class="btn waves-effect waves-light light-green accent-3" type="submit" name="action">Editar</button>
          </form>
        </td>
        <td style="width: 5em">
          <form method="get" action="borraElemento.jsp">
            <input type="hidden" name="Codigo" value="<%=rs.getInt("Codigo")%>" />
            <button class="btn waves-effect waves-light light-green accent-3" type="submit" name="action">Borrar</button>
          </form>
        </td>
      </tr>
      <%
        }
      %>
    </tbody>
  </table>
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>
  <script src="js/scripts.js"></script>
</body>
</html>