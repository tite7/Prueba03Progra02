
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Negocio.Nacionalidad;

/**
 *
 * @author Administrador
 */
public class ServletNacionalidad extends HttpServlet {

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
               Nacionalidad nac=new Nacionalidad();
               //ASIGNO LA ID
               nac.setNacionalidad_id(id);
               //ELIMINO USAURIO
               nac.delete();
               //REDIRECCIONO A INDEX DESPUES DE ELIMINAR
               response.sendRedirect("index2.jsp");
               
           }else if(request.getParameter("guardar")!=null){
               String nombre=request.getParameter("nombre");
               Nacionalidad nac=new Nacionalidad();
               nac.setNombre(nombre);
               nac.save();
               //REDIRECCIONAR A INDEX.JSP DeSPUES DE GUARDAR
               response.sendRedirect("index2.jsp");
               
           }else if(request.getParameter("editar")!=null){
               int nacionalidad_id=Integer.parseInt(request.getParameter("nacionalidad_id"));
               String nombre=request.getParameter("nombre");
               Nacionalidad nac=new Nacionalidad();
               nac.setNombre(nombre);
               nac.update();
               response.sendRedirect("index2.jsp");
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
