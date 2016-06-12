<%-- 
    Document   : editar
    Created on : 09-jun-2016, 9:21:41
    Author     : Mio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Nacionalidades</title>
    </head>
    <body>
        <h1>EDITAR NACIONALIDAD</h1>
            <% //String nacionalidad_id=request.getParameter("nacionalidad_id"); %> 
        <form method="post" action="../ServletNacionalidad">
            <table border="3">
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="nacionalidad_id" placeholder="Id Nacionalidad"></td>
                </tr>
                <tr>
                    <td>NOMRBE</td>
                    <td><input type="text" name="nombre" placeholder="Nombre"></td>
                </tr>
            </table>
            <br>
            <button type="submit" class="btn btn-default" name="editar">Actualizar</button>
        </form>    
    </body>
</html>
