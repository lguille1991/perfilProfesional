package com.tecontrato.controlador;

import com.tecontrato.modelo.Candidato;
import com.tecontrato.modelo.CrudCurriculum;
import com.tecontrato.modelo.Curriculum;
import com.tecontrato.modelo.NivelExperiencia;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Nombre      : ProcesarCurriculum
 * Versión     : 1.0
 * Fecha       : 07/10/2017
 * CopyRight   : Programmer Group Services S.A de C.V
 * @author     : Alexis, Kevin, Luis, María José, Geofredo
 */
public class ProcesarCurriculum extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        Curriculum cv = new Curriculum();
        CrudCurriculum crcv = new CrudCurriculum();
        String respuesta = null;
        
        try {
            
            cv.setIdCurriculum(Integer.parseInt(request.getParameter("txtIdCurriculum")));
            cv.setCandidato(new Candidato(Integer.parseInt(request.getParameter("txtIdCandidato"))));
            cv.setNivelExperiencia(new NivelExperiencia(Integer.parseInt(request.getParameter("txtIdNivelExperiencia"))));
            
            if(request.getParameter("btnGuardar")!=null)
            {
                crcv.insertarCurriculum();
                respuesta="<div class='alert alert-success alert-dismissable'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong style='color: black;'>¡Éxito!</strong> Registro ingresado de forma exitosa.</div>";
            }else if(request.getParameter("btnModificar")!=null)
            {
                crcv.modificarCurriculum(cv);
                respuesta="<div class='alert alert-success alert-dismissable alerta'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong style='color: black;'>¡Éxito!</strong> Registro modificado de forma exitosa.</div>";
            }else if(request.getParameter("btnEliminar")!=null)
            {
                crcv.eliminarCurriculum(cv);
                respuesta="<div class='alert alert-success alert-dismissable'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong style='color: black;'>¡Éxito!</strong> Registro eliminado de forma exitosa.</div>";
            }
            
            request.setAttribute("respuesta", respuesta);
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
