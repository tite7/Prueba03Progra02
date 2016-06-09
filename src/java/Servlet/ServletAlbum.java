
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Negocio.Album;

/**
 *
 * @author Administrador
 */
public class ServletAlbum extends HttpServlet {

    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if(request.getParameter("eliminar")!=null){
               //RECIBO PARAMETRO LO CONVIERTO EN ENTERO
               int id=Integer.parseInt(request.getParameter("eliminar"));
               out.println("Eliminar ID:"+id);
               //CREO UN OBJETO USARIO
               Album alb=new Album();
               //ASIGNO LA ID
               alb.setAlbum_id(id);
               //ELIMINO USAURIO
               alb.delete();
               //REDIRECCIONO A INDEX DESPUES DE ELIMINAR
               response.sendRedirect("Albumes/Albumes.jsp");
               
           }else if(request.getParameter("guardar")!=null){
               String titulo=request.getParameter("titulo");
               String fecha_creacion=request.getParameter("fecha_creacion");
               int cantidad_canciones=Integer.parseInt(request.getParameter("cantidad_canciones"));
               int autor_id=Integer.parseInt(request.getParameter("fecha_creacion"));
               int creado_por=Integer.parseInt(request.getParameter("creado_por"));
               Album alb=new Album();
               alb.setTitulo(titulo);
               alb.setFecha_creacion(fecha_creacion);
               alb.setCantidad_canciones(cantidad_canciones);
               alb.setAutor_id(autor_id);
               alb.setCreado_por(creado_por);
               alb.save();
               //REDIRECCIONAR A INDEX.JSP DeSPUES DE GUARDAR
               response.sendRedirect("Albumes/Albumes.jsp");
               
           }else if(request.getParameter("editar")!=null){
               int album_id=Integer.parseInt(request.getParameter("album_id"));
               String titulo=request.getParameter("titulo");
               String fecha_creacion=request.getParameter("fecha_creacion");
               int cantidad_canciones=Integer.parseInt(request.getParameter("cantidad_canciones"));
               Album alb=new Album();
               alb.setAlbum_id(album_id);
               alb.setTitulo(titulo);
               alb.setFecha_creacion(fecha_creacion);
               alb.setCantidad_canciones(cantidad_canciones);
               alb.update();
               response.sendRedirect("Albumes/Albumes.jsp");
               
           }
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
