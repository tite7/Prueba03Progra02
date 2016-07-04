<%-- 
    Document   : Reportes
    Created on : 28-jun-2016, 22:15:05
    Author     : Toshiba
--%>

<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="java.io.File"%>
<%@page import="AccesoDato.Conexion"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Reportes</title>

    <!-- Bootstrap core CSS -->
    <link href="../Templates/css/Bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="navbar.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">

      <!-- Static navbar -->
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            <a class="navbar-brand" href="../index2.jsp">Bienvenido Usuario</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li><a href="../Usuarios/Usuarios.jsp">Tabla Usuarios</a></li>
              <li><a href="../Albumes/Albumes.jsp">Albumes</a></li>
              <li><a href="../Autores/Autores.jsp">Autores</a></li>
              <li><a href="../Nacionalidades/Nacionalidades.jsp">Nacionalidades</a></li>
              <li><a href="../Paises/Paises.jsp">Paises</a></li>
              <li><a href="../Ciudades/Ciudades.jsp">Ciudades</a></li>
              <li class="active"><a href="Reportes.jsp">Reportes</a></li>
            </ul>
              <ul class="nav navbar-nav navbar-right">
            <li><a href="../Sesion.jsp">Cerrar Sesion</a></li>
          </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

      <!-- Main component for a primary marketing message or call to action -->
      <div>
      
        <br>
          <table class="table table-striped">
                <thead>
                <th>TABLAS</th>
                <th>REPORTES</th>
                </thead>
                <tbody>
                    <tr>
                        <td>Tabla Usuarios</td>
                        <td><input type="submit" class="btn btn-success" value="Reporte Usuarios"></td>
                    </tr>
                    <tr>
                        <td>Tabla Albumes</td>
                        <td><input type="submit" class="btn btn-success" value="Reporte Albumes"></td>
                    </tr>
                    <tr>
                        <td>Tabla Autores</td>
                        <td><input type="submit" class="btn btn-success" value="Reporte Autores"></td>
                    </tr>
                    <tr>
                        <td>Tabla Nacionalidades</td>
                        <td><a href="../Nacionalidades/ReporteNacionalidades.jsp"><input type="submit" class="btn btn-success" value="Reporte Nacionalidades"></a></td>
                    </tr>
                    <tr>
                        <td>Tabla Paises</td>
                        <td><input type="submit" class="btn btn-success" value="Reporte Paises"></td>
                    </tr>
                    <tr>
                        <td>Tabla Ciudades</td>
                        <td><input type="submit" class="btn btn-success" value="Reporte Ciudades"></td>
                    </tr>
                </tbody>
            </table>
        
        <br><br>
        
      </div>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../Templates/js/Bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>