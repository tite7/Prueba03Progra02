<%-- 
    Document   : guardar
    Created on : 29-jun-2016, 19:07:17
    Author     : Mio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guardar Pais</title>
    </head>
    <body>
        <h1>GUARDAR PAIS</h1>
        <form method="POST" action="../ServletPais">
            <table border="3">
                <tr>
                    <td>NOMBRE</td>
                    <td><input type="text" name="nombre" placeholder="Nombre"></td>
                </tr>
                <tr>
                    <td>CREADO POR</td>
                    <td><input type="text" name="creado_por" placeholder="Creado por"></td>
                </tr>
                <tr>
                    <td>ESTADO</td>
                    <td><input type="text" name="estado" placeholder="Estado"></td>
                </tr>
            </table>
            <br>
            <button type="submit" class="btn btn-default" name="guardar">Guardar</button>
        </form>
    </body>
</html>
