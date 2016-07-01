<%-- 
    Document   : editar
    Created on : 29-jun-2016, 19:05:29
    Author     : Mio
--%>

<%@page import="AccesoDato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Ciudad</title>
    </head>
    <body>
        <h1>EDITAR ALBUM</h1>
            <% //String ciudad_id=request.getParameter("ciudad_id"); %> 
            <form method="POST" action="../ServletCiudad">
            <table border="3">
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="ciudad_id" placeholder="Id Ciudad"></td>
                </tr>
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
                <tr>
                    <td>ID PAIS</td>
                    <td><input type="text" name="pais_id" placeholder="Id Pais"></td>
                </tr>     
            </table>
            <br>
            <button type="submit" class="btn btn-default" name="editar">Actualizar</button>
        </form>
    </body>
</html>

