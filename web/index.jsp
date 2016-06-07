<%-- 
    Document   : index
    Created on : 06-06-2016, 07:55:30 PM
    Author     : Administrador
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <!--%
        String dia = Integer.toString(jdt.getCalendar().get(Calendar.DAY_OF_MONTH));
        String mes = Integer.toString(jdt.getCalendar().get(Calendar.MONTH) + 1);
        String year = Integer.toString(jdt.getCalendar().get(Calendar.YEAR));
        String fecha = (dia + "-" + mes + "-" + year);
        %>
        txtFecha.setText(fecha);
        -->
        Calendar calendar = new GregorianCalendar();

            int year       = calendar.get(Calendar.YEAR);
            int month      = calendar.get(Calendar.MONTH); 
            int dayOfMonth = calendar.get(Calendar.DAY_OF_MONTH); 
            
        <input type="datetime" name="fecha">
    </body>
</html>
