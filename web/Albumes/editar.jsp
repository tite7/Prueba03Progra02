<%-- 
    Document   : editar
    Created on : 09-jun-2016, 9:21:41
    Author     : Mio
--%>

<%@page import="AccesoDato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>EDITAR AUTOR</h1>
        <form method="POST" action="../ServletAlbum">
            <table border="3">
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="album_id" placeholder="Id Album"></td>
                </tr>
                <tr>
                    <td>TITULO</td>
                    <td><input type="text" name="titulo" placeholder="Titulo"></td>
                </tr>
                <tr>
                    <td>FECHA CREACION</td>
                    <td><input type="date" name="fecha_creacion" ></td>
                </tr>
                <tr>
                    <td>CANTIDAD CANCIONES</td>
                    <td><input type="text" name="cantidad_canciones" placeholder="Cantidad de Canciones"></td>
                </tr>
                <tr>
                    <td>ID AUTOR</td>
                    <td><input type="text" name="autor_id" placeholder="Id autor"></td>
                </tr>
                <tr>
                    <td>CREADO POR</td>
                    <td><input type="text" name="creado_por" placeholder="Creado por..."></td>
                </tr>
                
            </table>
            <br>
            <button type="submit" class="btn btn-default" name="editar">Actualizar</button>
        </form>
    </body>
</html>
