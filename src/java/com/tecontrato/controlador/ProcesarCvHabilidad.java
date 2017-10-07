package com.tecontrato.controlador;

import com.tecontrato.modelo.CrudCvHabilidad;
import com.tecontrato.modelo.Curriculum;
import com.tecontrato.modelo.CvHabilidad;
import com.tecontrato.modelo.Habilidad;
import com.tecontrato.modelo.Nivel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Nombre      : ProcesarCvHabilidad
 * Versión     : 1.0
 * Fecha       : 07/10/2017
 * CopyRight   : Programmer Group Services S.A de C.V
 * @author     : Alexis, Kevin, Luis, María José, Geofredo
 */
public class ProcesarCvHabilidad extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        CvHabilidad cvh = new CvHabilidad();
        CrudCvHabilidad ccvh = new CrudCvHabilidad();
        String val = null;
        
        try {
            
            cvh.setCurriculum(new Curriculum(Integer.parseInt(request.getParameter("txtIdCurriculum"))));
            cvh.setHabilidad(new Habilidad(Integer.parseInt(request.getParameter("txtIdHabilidad"))));
            cvh.setValoracion(Integer.parseInt(request.getParameter("txtValoracion")));
            cvh.setNivel(new Nivel(Integer.parseInt(request.getParameter("txtIdNivel"))));
            
            if(request.getParameter("btnGuardar")!=null)
            {
                ccvh.insertarCvHabilidad(cvh);
                val="Datos insertados correctamente";
            }else if(request.getParameter("btnModificar")!=null)
            {
                ccvh.modificarCvHabilidad(cvh);
                val="Datos modificados correctamente";
            }else if(request.getParameter("btnEliminar")!=null)
            {
                ccvh.eliminarCvHabilidad(cvh);
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
