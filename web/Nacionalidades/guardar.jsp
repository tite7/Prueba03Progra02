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
        <form method="post" action="../ServletNacionalidad.java">
            <table border="3">
                <tr>
                    <td>NOMBRE</td>
                    <td><input type="text" name="nombre" placeholder="Nombre"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
