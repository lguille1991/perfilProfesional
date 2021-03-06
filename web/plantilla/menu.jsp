<%-- 
    Document   : menu
    Created on : 10-09-2017, 05:48:52 PM
    Author     : Maria Jose
--%>

<%@page import="com.tecontrato.modelo.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    CrudUsuario cu = new CrudUsuario();
    String iniciarsesion ="";
    String registrarse   ="";
    String usuario       ="";
    String gestionar     ="";
    String consultas     ="";
    String reportes      ="";
    String cuenta        ="";
    String curriculum    ="";
    String dir           ="";
    String cerrar        ="";
    String close         ="";
    
    if (session != null) {
        if (session.getAttribute("user") != null) {
            close="";
            cerrar = "<form action='logoutcontroller' method='post'><button id='buttonL' class='btn btn-primary'><span class='glyphicon glyphicon-off'>Cerrar Sesión</span></button></form>";
            iniciarsesion="none";
            registrarse="none";
            String name = (String) session.getAttribute("user");
            List<Candidato> lst = cu.obtenerDatosC(name);
            
            if(request.getSession().getAttribute("valor").equals(1)){
                 gestionar="";
            
            }else if(request.getSession().getAttribute("valor").equals(2) ){
                iniciarsesion="none";
                registrarse="none";
                usuario="none";
                gestionar="none";
                consultas="none";
                reportes="none";
                curriculum="none";
            
            }else if(request.getSession().getAttribute("valor").equals(3)){ 
                iniciarsesion="none";
                registrarse="none";
                usuario="none";
                gestionar="none";
                consultas="none";
                reportes="none";
                dir="perfil.jsp";
            }else{
                response.sendRedirect("index.jsp");
                usuario="none";
                gestionar="none";
                consultas="none";
                reportes ="none";
                cuenta  ="none";
                curriculum="none";
                close="none";
                registrarse="";
                iniciarsesion="";
            }
        } else {
            response.sendRedirect("index.jsp");
            usuario="none";
            gestionar="none";
            consultas="none";
            reportes ="none";
            cuenta  ="none";
            curriculum="none";
            registrarse="";
            iniciarsesion="";
        }
    }
%>
<!--MENU-->

    <div id='cssmenu'>
        <ul>
           <li class='active'><a href='index.jsp'><span>TeContrato.com</span></a></li>
           <li class='pull-right' style='display: <%=iniciarsesion%>;'><a href='login.jsp'><span>Iniciar Sesión</span></a></li>
            <li class='has-sub pull-right' style="z-index: 1;display: <%=registrarse%>;"><a href='#'><span>Registrarse</span></a>
               <ul>
                  <li><a href='usuarioCandidato.jsp'><span>Candidato</span></a></li>
                  <li><a href='usuarioEmpresa.jsp'><span>Empresa</span></a></li>
               </ul>
            </li>
            <li class='has-sub' style="z-index: 1;display: <%=usuario %>;"><a href='#'><span>Usuarios</span></a>
               <ul>
                   <li><a href='empleadoAdmin.jsp'><span>Empleado</span></a></li>
                  <li><a href='candidatoAdmin.jsp'><span>Candidato</span></a></li>
                  <li><a href='empresaAdmin.jsp'><span>Empresa</span></a></li>
               </ul>
            </li>
            <li class='has-sub' style="z-index: 1;display: <%=gestionar %>;"><a href='#'><span>Gestionar</span></a>
               <ul>
                   <li><a href='habilidad.jsp'><span>Habilidad</span></a></li>
                  <li><a href='idioma.jsp'><span>Idioma</span></a></li>
                  <li><a href='cargo.jsp'><span>cargo</span></a></li>
                  <li><a href='educacion.jsp'><span>Educación</span></a></li>
                  <li><a href='area.jsp'><span>Área</span></a></li>
               </ul>
            </li>
            <li class='has-sub' style="z-index: 1;display: <%=consultas %>;"><a href='#'><span>Consultas</span></a>
               <ul>
                   <li><a href='#'><span>Curriculum</span></a></li>
                  <li><a href='#'><span>Ofertas</span></a></li>
               </ul>
            </li>
            <li class='has-sub' style="z-index: 1;display: <%=cuenta %>;"><a href='#'><span>Mi cuenta</span></a>
               <ul>
                    <!--la direccion cambia segun rol y muestra el perfil de cada usuario-->
                    <li><a href='<%=dir %>'><span>Editar perfil</span></a></li>
               </ul>
            </li> 
            <li class='has-sub' style="z-index: 1;display: <%=curriculum %>;"><a href='#'><span>Curriculum</span></a>
               <ul>
                   <li><a href='#'><span>Ver curriculum</span></a></li>
                   <li><a href='<%=dir%>'><span>Editar curriculum</span></a></li>
               </ul>
            </li>
            <li style="display:<%=reportes %>; "><a href='#'><span>Reportes</span></a></li>
            <li style="display: <%=close%>;" class="pull-right"><% out.print(cerrar); %></li>
        </ul>
    </div>

<!--Fin de menú-->