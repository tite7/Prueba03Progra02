<%-- 
    Document   : ReporteAutores
    Created on : 04-jul-2016, 18:53:05
    Author     : Mio
--%>
<%@page import="net.sf.jasperreports.engine.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="AccesoDato.Conexion" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte Autores</title>
    </head>
    <body>
        <%  try{
            Conexion con=Conexion.getInstance();
            File reportFile=new File(application.getRealPath("//Reportes//ListarAutores.jasper"));
          byte[] bytes=JasperRunManager.runReportToPdf(reportFile.getPath(), null, con.getConexion());
          response.setContentType("application/pdf");
          response.setContentLength(bytes.length);
          ServletOutputStream outputStream=response.getOutputStream();
          outputStream.write(bytes, 0, bytes.length);
          outputStream.flush();
          outputStream.close();
        }catch(Exception ex){
            out.println("ERROR DE CONEXION AL GENERAR EL REPORTE!!!!" + ex.getMessage());
        }
        %>
    </body>
</html>
