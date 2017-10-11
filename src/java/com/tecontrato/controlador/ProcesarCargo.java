package com.tecontrato.controlador;

import com.tecontrato.modelo.Cargo;
import com.tecontrato.modelo.CrudCargo;
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
public class ProcesarCargo extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        Cargo car = new Cargo();
        CrudCargo crcar = new CrudCargo();
        String val = null;
        
        try {
            
            
            car.setNombreCargo(request.getParameter("txtNombreCargo"));
            
            if(request.getParameter("btnGuardar")!=null)
            {
                crcar.insertarCargo(car);
                val="Datos insertados correctamente";
            }else if(request.getParameter("btnModificar")!=null)
            {
                car.setIdCargo(Integer.parseInt(request.getParameter("txtCodigo")));
                crcar.modificarCargo(car);
                val="Datos modificados correctamente";
            }else if(request.getParameter("btnEliminar")!=null)
            {
                car.setIdCargo(Integer.parseInt(request.getParameter("txtCodigo")));
                crcar.eliminarCargo(car);
                val="Datos eliminados correctamente";
            }
            
            request.setAttribute("valor", val);
            response.sendRedirect("cargo.jsp");
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
