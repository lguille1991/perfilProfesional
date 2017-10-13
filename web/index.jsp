<%-- 
    Document   : index
    Created on : 09-21-2017, 03:08:38 PM
    Author     : Maria Jose
--%>
<%@page import="java.util.List"%>
<%@page import="com.tecontrato.modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="plantilla/libs.jsp" />
        <title>TeContrato.com</title>
        <style>
        /*Sidebar menu*/
        .row{
           margin-left:0px;
           margin-right:0px;
       }

       #wrapper {
           padding-left: 70px;
           transition: all .4s ease 0s;
           height: 100%
       }

       #sidebar-wrapper {
           margin-left: -150px;
           left: 70px;
           width: 300px;
           background: #222;
           height: 100%;
           z-index: 10000;
           transition: all .4s ease 0s;
       }

       .sidebar-nav {
           display: block;
           float: left;
           width: 0px;
           list-style: none;
           margin: 0;
           padding: 0;
       }
       #page-content-wrapper {
           padding-left: 0;
           margin-left: 0;
           width: 100%;
           height: auto;
       }
       #wrapper.active {
           padding-left: 150px;
       }
       #wrapper.active #sidebar-wrapper {
           left: 150px;
       }

       #page-content-wrapper {
         width: 100%;
       }

       #sidebar_menu li a, .sidebar-nav li a {
           color: #999;
           display: block;
           float: left;
           text-decoration: none;
           width: 150px;
           background: #252525;
           border-top: 1px solid #373737;
           border-bottom: 1px solid #1A1A1A;
           -webkit-transition: background .5s;
           -moz-transition: background .5s;
           -o-transition: background .5s;
           -ms-transition: background .5s;
           transition: background .5s;
       }
       .sidebar_name {
           padding-top: 25px;
           color: #fff;
           opacity: .7;
       }

       .sidebar-nav li {
         line-height: 40px;
         text-indent: 20px;
       }

       .sidebar-nav li a {
         color: #999999;
         display: block;
         text-decoration: none;
       }

       .sidebar-nav li a:hover {
         color: #fff;
         background: rgba(255,255,255,0.2);
         text-decoration: none;
       }

       .sidebar-nav li a:active,
       .sidebar-nav li a:focus {
         text-decoration: none;
       }

       .sidebar-nav > .sidebar-brand {
         height: 65px;
         line-height: 60px;
         font-size: 18px;
       }

       .sidebar-nav > .sidebar-brand a {
         color: #999999;
       }

       .sidebar-nav > .sidebar-brand a:hover {
         color: #fff;
         background: none;
       }

       #main_icon
       {
           float:right;
          padding-right: 65px;
          padding-top:20px;
       }
       .sub_icon
       {
           float:right;
          padding-right: 65px;
          padding-top:10px;
       }
       .content-header {
         height: 65px;
         line-height: 65px;
       }

       .content-header h1 {
         margin: 0;
         margin-left: 20px;
         line-height: 65px;
         display: inline-block;
       }

       @media (max-width:767px) {
           #wrapper {
           padding-left: 70px;
           transition: all .4s ease 0s;
       }
       #sidebar-wrapper {
           left: 70px;
       }
       #wrapper.active {
           padding-left: 150px;
       }
       #wrapper.active #sidebar-wrapper {
           left: 150px;
           width: 300px;
           transition: all .4s ease 0s;
       }
}
        </style>
        <script>
        $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("active");
        });
         </script>  
</head>
<body  class="bodyFormulario" id="home">
    <%
        if (session.getAttribute("user") != null){
            
        }
    %>
        <div class="container-fluid">
        <div class="row" style="width: 100%; position: fixed;z-index: 10;">
            <jsp:include page="plantilla/menu.jsp" />
        </div> 
        <!--Busqueda-->
        <div class="row " id="buscador" style="margin-top: 65px;"  >
               <div class="col-md-11 " style="margin-left: 55px;"  >  
               <input type="text" name="search"  id="buscar" placeholder="Busqueda" style="margin-bottom: 15px;">
           </div>
           <div class="col-md-1"></div>
        </div>
        <div style="margin-top: 60px;">
            ${respuesta}
        </div>  
        
    <!-- Sidebar -->
  <div class="container">
      
    <div id="wrapper" class="active" style="margin-top: 20px;">
        <div id="sidebar-wrapper" style="margin-right: 30px;">
            <ul id="sidebar_menu" class="sidebar-nav" >
           <li class="sidebar-brand"><a id="menu-toggle" href="#"><span id="main_icon" class=""></span></a></li>
        </ul>
            <ul class="sidebar-nav" id="sidebar" style="margin-left: -20px;">
          <li><a ><span" ></span>FILTROS </a></li>
          <li><a><span class="sub_icon glyphicon glyphicon-link"></span> Empresas</a></li>
          <li><a><span class="sub_icon glyphicon glyphicon-link"></span>Cargos</a></li>
          <li><a><span class="sub_icon glyphicon glyphicon-link"></span>Área</a></li>
          <li><a><span class="sub_icon glyphicon glyphicon-link"></span>Tipo de contratación</a></li>
        </ul>
       </div>
          
      <!-- Page content -->
    <div id="page-content-wrapper">
        <!-- Keep all page content within the page-content inset div! -->
        <div class="page-content inset">
          <div class="row">
              
                <%CrudEmpresa ce = new CrudEmpresa(); 
                  List<Empresa> lst= ce.empresas();
                  for(Empresa e:lst){
                %>
                <div class="media well" style="margin-left: 20px;">
                <div class="col-md-2">
                    <img src="imagenes/empresa.png" title="Empresas" width="115px">
                </div>
                <div class="col-md-10 " style="padding-left: 10%;">
                    <h4><%=e.getNombreEmpresa() %></h4>
                    <h5><%=e.getActividad() %></h5>
                    <h5><%=e.getDescripcion() %></h5>
                    <p><a id="button" class="btn btn-primary btn-large pull-right" href="#">Leer más</a></p>
                </div>
                </div>
                <%}%>
          
          </div>
        </div>
    </div>
    </div>
    
 <!-- <div class="col-md-12" id="contact" style="margin-top: 50px;">
    <div class="col-md-4">
        <p><img src="imagenes/logo.png" height="270px"></p>      
    </div>
      <div class="col-md-4" >
  
              <p>Sobre nosotros</p>
              <p>loremkasldjklaskjdlaskjdlaskjdlaskjdlaskjdlaskjdlasml</p>
              <p> askdlask saldks oskposapdis uwuwuwhk   ms </p>
 
      </div>
      <div class="col-md-4">
        <h3><strong>CONTÁCTANOS</strong></h3>
        <form action="#" target="_blank" >
        <p><input class=" form-control" type="text" placeholder="Nombre" required name="Nombre"></p>
        <p><input class="form-control" type="email" placeholder="Correo eléctronico" required name="Correo"></p>
        <p><textarea class="form-control" lang="140"  placeholder="Mensaje" id="txtDescripcion" required name="Mensaje"></textarea></p>
        <p>
            <button class="btn btn-primary" id="buttonL" style="width: 100%;" type="submit">
            <i class="fa fa-paper-plane"></i> ENVIAR
          </button>
        </p>
      </form>
    </div>-->


<!-- Footer -->
<jsp:include page="plantilla/footer.jsp"/>
</div>
</body>
</html>
