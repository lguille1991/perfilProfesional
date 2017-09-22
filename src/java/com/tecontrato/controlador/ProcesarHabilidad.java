/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tecontrato.controlador;

import com.tecontrato.modelo.CrudHabilidad;
import com.tecontrato.modelo.Habilidad;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kevin López
 */
public class ProcesarHabilidad extends HttpServlet {

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
            
        Habilidad hb=new Habilidad();
        CrudHabilidad cha=new CrudHabilidad();
        String val=null;
        try{
                //hb.setIdHabilidad(Integer.parseInt(request.getParameter("idhabilidad")));
                hb.setNombreHabilidad(request.getParameter("nombrehabilidad"));
                
                if(request.getParameter("btnGuardar") != null){
                    cha.insertarHabilidad(hb);
                    val="Datos insertados correctamente";
                }else if(request.getParameter("btnModificar") != null){
                    cha.modificarHabilidad(hb);;
                    val="Datos modificados correctamente";
                }else if(request.getParameter("btnEliminar") != null){
                   cha.eliminarHabilidad(hb);
                   val="Datos eliminados correctamente";
                }
               // rd=request.getRequestDispatcher("index.jsp");
                request.setAttribute("valor", val);
                response.sendRedirect("habilidad.jsp");
            }catch(Exception e) {
                request.setAttribute("error", e.toString());
            }
            //rd.forward(request, response);
            //response.sendRedirect("habilidad.jsp");
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
