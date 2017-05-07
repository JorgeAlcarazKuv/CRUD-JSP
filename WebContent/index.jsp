<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SilkBroad</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css">
<link rel="stylesheet" href="css/styles.css">
<link href="http://fonts.googleapis.com/css?family=Warnes" rel="stylesheet" type="text/css" />


</head>
<body>
  <canvas id="canvas-matrix" class="background-matrix"></canvas>
  <div class="main-container">
    <div class="cartel">Silk Road</div>
    <div id="menu" class="row">
      <div class="input-field col s12 ">
        <select onchange="if (this.value) window.location.href=this.value+'.jsp'">
          <option value="" disabled selected>Qué quieres hacer:</option>
          <option value="listado">Ver Inventario</option>
        </select>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>
  <script src="js/scripts.js"></script>
</body>
</html>