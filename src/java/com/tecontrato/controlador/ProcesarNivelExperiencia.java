
package com.tecontrato.controlador;

import com.tecontrato.modelo.CrudNivelExperiencia;
import com.tecontrato.modelo.NivelExperiencia;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Nombre      : ProcesarCargo
 * Versión     : 1.0
 * Fecha       : 06/10/2017
 * CopyRight   : Programmer Group Services S.A de C.V
 * @author     : Alexis, Kevin, Luis, María José, Geofredo
 */
public class ProcesarNivelExperiencia extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        NivelExperiencia nexp = new NivelExperiencia();
        CrudNivelExperiencia crne = new CrudNivelExperiencia();
        String respuesta = null;
        
        try {
            
            nexp.setIdNivelExperiencia(Integer.parseInt(request.getParameter("txtIdNivelExperiencia")));
            nexp.setNombreNivelExperiencia(request.getParameter("txtNombreNivelExperiencia"));
            
            if(request.getParameter("btnGuardar")!=null)
            {
                crne.insertarNivelExperiencia(nexp);
                respuesta="<div class='alert alert-success alert-dismissable'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong style='color: black;'>¡Éxito!</strong> Registro ingresado de forma exitosa.</div>";
            }else if(request.getParameter("btnModificar")!=null)
            {
                crne.modificarNivelExperiencia(nexp);
                respuesta="<div class='alert alert-success alert-dismissable'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong style='color: black;'>¡Éxito!</strong> Registro modificado de forma exitosa.</div>";
            }else if(request.getParameter("btnEliminar")!=null)
            {
                crne.eliminarNivelExperiencia(nexp);
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
