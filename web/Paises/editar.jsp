<%-- 
    Document   : editar
    Created on : 29-jun-2016, 19:07:09
    Author     : Mio
--%>


<%@page import="AccesoDato.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Pais</title>
    </head>
    <body>
        <h1>EDITAR PAIS</h1>
            <% //String pais_id=request.getParameter("pais_id"); %> 
            <form method="POST" action="../ServletPais">
            <table border="3">
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="pais_id" placeholder="Id Pais"></td>
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
            </table>
            <br>
            <button type="submit" class="btn btn-default" name="editar">Actualizar</button>
        </form>
    </body>
</html>
