<%-- 
    Document   : guardar
    Created on : 09-jun-2016, 9:21:27
    Author     : Mio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <h1>GUARDAR NACIONALIDAD</h1>
        <form method="POST" action="../ServletNacionalidad">
            <table border="3">
                <tr>
                    <td>NOMBRE</td>
                    <td><input type="text" name="nombre" placeholder="Nombre"></td>
                </tr>
            </table>
            <br>
            <button type="submit" class="btn btn-default" name="guardar" value="Guardar">Guardar</button>
        </form>
    </body>
</html>
