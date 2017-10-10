/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tecontrato.controlador;

import com.tecontrato.modelo.CrudEducacion;
import com.tecontrato.modelo.Curriculum;
import com.tecontrato.modelo.Educacion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Geofredo
 */
public class ProcesarEducacion extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        
        Educacion edu = new Educacion();
        CrudEducacion cedu = new CrudEducacion();
        String val = null;
        
        try {
            
            
            edu.setCurriculum(new Curriculum(Integer.parseInt(request.getParameter("txtCodigo"))));
            edu.setInstitucion(request.getParameter("txtInstitucion"));
            edu.setEspecialidad(request.getParameter("txtEspecialidad"));
            edu.setAnioFinalizacion(Integer.parseInt(request.getParameter("txtAnioFinalizacion")));
            
            if(request.getParameter("btnGuardar")!=null)
            {
                cedu.insertarEducacion(edu);
                val="Datos insertados correctamente";
            }else if(request.getParameter("btnModificar")!=null)
            {
                cedu.modificarEducacion(edu);
                val="Datos modificados correctamente";
            }else if(request.getParameter("btnEliminar")!=null)
            {
                cedu.eliminarEducacion(edu);
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
