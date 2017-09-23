<%-- 
    Document   : index
    Created on : 09-21-2017, 03:08:38 PM
    Author     : Maria Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Versión compilada y comprimida del CSS de Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Tema opcional -->
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- Versión compilada y comprimida del JavaScript de Bootstrap -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>TeContrato.com</title>
    </head>
    <body>
    <div class="container-fluid">
	<div class="row">
            <div class="col-md-12">
                <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                             <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button> <a class="navbar-brand" href="#">TeContrato.com</a>
                </div>	
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li >
                                <a href="#">Inicio</a>
                        </li>
                        <li>
                                <a href="login.jsp">Iniciar Sesión</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Registrarse<strong class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                        <a href="registrarse.jsp">Candidato</a>
                                </li>
                                <li>
                                        <a href="empresa.jsp">Empresa</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
		</nav>
            </div>
	</div>
	<div class="row">
            <div class="col-md-12 media well">
                <!--Busqueda-->
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <form class="navbar-form">
                        <input class="form-control" type="text"  placeholder="Escribe el nombre de una empresa o cargo" style="width:75%;">
                        <button type="submit" class="btn btn-default" style="width:20%;">Buscar</button>
                    </form>
                </div>
                <div class="col-md-3"></div>
            </div>
	</div>
        <div class="row affix-row">
            <div class="col-sm-3 col-md-2 affix-sidebar">
            <div class="sidebar-nav">
            <div class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  </button>
                  <span class="visible-xs navbar-brand"></span>
                </div>
                <div class="navbar-collapse collapse sidebar-navbar-collapse">
                  <ul class="nav navbar-nav" id="sidenav01">
                      <li class="active" style="width: 100%;">
                      <a href="#" data-toggle="collapse" data-target="#toggleDemo0" data-parent="#sidenav01" class="collapsed">
                      <h4>FILTROS</h4>
                      </a>
                    </li>
                    <li style="width: 100%;">
                      <a href="#" data-toggle="collapse" data-target="#toggleDemo" data-parent="#sidenav01" class="collapsed">
                      <span class="glyphicon glyphicon-cloud"></span> Empresas <span class="caret pull-right"></span>
                      </a>
                      <div class="collapse" id="toggleDemo" style="height: 0px;">
                        <ul class="nav nav-list">
                          <li><a href="#">Ransa</a></li>
                          <li><a href="#">Oceano</a></li>
                          <li><a href="#">Seven</a></li>
                        </ul>
                      </div>
                    </li>
                    <li style="width: 100%;">
                      <a href="#" data-toggle="collapse" data-target="#toggleDemo2" data-parent="#sidenav01" class="collapsed">
                      <span class="glyphicon glyphicon-inbox"></span> Cargos <span class="caret pull-right"></span>
                      </a>
                      <div class="collapse" id="toggleDemo2" style="height: 0px;">
                        <ul class="nav nav-list">
                          <li><a href="#">Gerencia</a></li>
                          <li><a href="#">Informática</a></li>
                          <li><a href="#">Contabilidad</a></li>
                        </ul>
                      </div>
                    </li>
                    <li><a href="#"><span class="glyphicon glyphicon-lock"></span> Tipo de Contrato </a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-calendar"></span> Departamento </a></li>
                  </ul>
                  </div><!--/.nav-collapse -->
                </div>
              </div>
            </div><!--affix sidebar-->
            
            <div class="col-sm-9 col-md-10 affix-content"> 
                <div class="media well">
                    <h4>Cargo </h4>
                    <h5>Nombre de empresa</h5>
                    <h5>Descripción del puesto: This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</h5>
                    <p><a class="btn btn-primary btn-large" href="#">Leer más</a></p>
                </div> 
                <div class="media well">
                    <h4>Cargo </h4>
                    <h5>Nombre de empresa</h5>
                    <h5>Descripción del puesto: This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</h5>
                    <p><a class="btn btn-primary btn-large" href="#">Leer más</a></p>
                </div> 
            </div>
            <div class="col-md-1"></div>
	</div><!--affix row-->
       
        <div class="container">
            <div class="row">
            <!--Footer-->
		<div class="col-md-4">
                    <h4>Sobre Nosotros</h4>
		</div>
                <div class="col-md-4">
                   <h4>Ubicación</h4>
		</div>
            <div class="col-md-4">
                   <h4>Contacto</h4> 
            </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                   <p>Copyright &copy;2017 by TeContrato.com</p>
                </div>
            </div>
            
        </div>
    </div>
    </body>
</html>
