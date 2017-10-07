package com.tecontrato.controlador;

import com.tecontrato.modelo.Candidato;
import com.tecontrato.modelo.Correo;
import com.tecontrato.modelo.CrudCorreo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Nombre      : ProcesarCorreo
 * Versión     : 1.0
 * Fecha       : 06/10/2017
 * CopyRight   : Programmer Group Services S.A de C.V
 * @author     : Alexis, Kevin, Luis, María José, Geofredo
 */
public class ProcesarCorreo extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        Correo cor = new Correo();
        CrudCorreo crco = new CrudCorreo();
        String val = null;
        
        try {
            
            cor.setCandidato(new Candidato(Integer.parseInt(request.getParameter("txtIdCandidato"))));
            cor.setCorreo(request.getParameter("txtCorreo"));
            
            if(request.getParameter("btnGuardar")!=null)
            {
                crco.insertarCorreo(cor);
                val="Datos insertados correctamente";
            }else if(request.getParameter("btnModificar")!=null)
            {
                crco.modificarCorreo(cor);
                val="Datos modificados correctamente";
            }else if(request.getParameter("btnEliminar")!=null)
            {
                crco.eliminarCorreo(cor);
                val="Datos eliminados correctamente";
            }
            
            request.setAttribute("valor", val);
            response.sendRedirect("index.jsp");
     } catch (Exception e) {
         request.setAttribute("ERROR", e.toString());
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
