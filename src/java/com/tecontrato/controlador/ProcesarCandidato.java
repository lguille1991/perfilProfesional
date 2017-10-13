package com.tecontrato.controlador;

import com.tecontrato.modelo.Candidato;
import com.tecontrato.modelo.CrudCandidato;
import com.tecontrato.modelo.Departamento;
import com.tecontrato.modelo.Genero;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Nombre      : ProcesarCandidato
 * Versión     : 1.0
 * Fecha       : 06/10/2017
 * CopyRight   : Programmer Group Services S.A de C.V
 * @author     : Alexis, Kevin, Luis, María José, Geofredo
 */
public class ProcesarCandidato extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        
        Candidato can = new Candidato();
        CrudCandidato crca = new CrudCandidato();
        String respuesta = null;
        try {
            can.setIdCandidato(Integer.parseInt(request.getParameter("txtCodigo")));
            can.setDepto(new Departamento(Integer.parseInt(request.getParameter("cmbDepto"))));
            can.setGenero(new Genero(Integer.parseInt(request.getParameter("genero"))));
            can.setNombre(request.getParameter("txtNombreCandidato"));
            can.setNacionalidad(request.getParameter("txtNacionalidad"));
            can.setFechaNacimiento(request.getParameter("txtFechaNacimiento"));
            can.setDireccion(request.getParameter("txtDireccion"));
            can.setFoto(request.getParameter("foto"));
            
            String txtIdRol = request.getParameter("txtIdRol");
            HttpSession sessi = request.getSession(); 
            sessi.setAttribute("txtIdRol", txtIdRol);
            
            if(request.getParameter("btnGuardar")!=null)
            {
                can.setIdCandidato(Integer.parseInt(request.getParameter("txtCodigo")));
                crca.insertarCandidato(can);
                respuesta="<div class='alert alert-success alert-dismissable'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong style='color: black;'>¡Éxito!</strong> Registro ingresado de forma exitosa.</div>";
            }else if(request.getParameter("btnModificar")!=null)
            {
                can.setIdCandidato(Integer.parseInt(request.getParameter("txtCodigo")));
                crca.modificarCandidato(can);
                respuesta="<div class='alert alert-success alert-dismissable alerta'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong style='color: black;'>¡Éxito!</strong> Registro modificado de forma exitosa.</div>";
            }else if(request.getParameter("btnEliminar")!=null)
            {
                can.setIdCandidato(Integer.parseInt(request.getParameter("txtCodigo")));
                crca.eliminarCandidato(can);
                respuesta="<div class='alert alert-success alert-dismissable'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong style='color: black;'>¡Éxito!</strong> Registro eliminado de forma exitosa.</div>";
            }
            
            request.setAttribute("respuesta", respuesta);
            
            if(txtIdRol.equals("3"))
            {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
            else if(txtIdRol.equals("1")){

                request.getRequestDispatcher("candidatoAdmin.jsp").forward(request, response);
            }
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