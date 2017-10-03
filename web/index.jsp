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
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Versión compilada y comprimida del CSS de Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Tema opcional -->
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- Versión compilada y comprimida del JavaScript de Bootstrap -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>TeContrato.com</title>
        <style>
 

            #etiqueta{
                color: whitesmoke;
                 font-size: 16px;
            }
            
            #buscador{
                margin-top: -70px;
                background-image: url("imagenes/banner.jpg");
                height: 425px;
                opacity: 0.9;

            }
            #contact{
               padding: 10px;
            }
            footer{
              position: relative;
                padding: 0;
                background-image: url("imagenes/footerbcg.jpg");
                height:100px;
                
               
            }
            #foot{
                height:100px;
                background: #1F618D;
                color: whitesmoke;
                opacity: 0.9;
            }
 
            #boxSearch{
                margin-top: 180px;
            }
            #custom-search-input{
                padding: 3px;
                border: solid 1px #E4E4E4;
                border-radius: 6px;
                background-color: #fff;
}
#custom-search-input:hover{
    box-shadow: 2px 2px 20px 2px #1F618D;
}
#custom-search-input input{
    border: 0;
    box-shadow: none;
}

#custom-search-input button{
    margin: 2px 0 0 0;
    background: none;
    border: 0;
    color: #666666;
    padding: 0 8px 0 10px;
    border-left: solid 1px #ccc;
   
}

#custom-search-input button:hover{
    border: 0;
    border-left: solid 1px #ccc;
}

#custom-search-input .glyphicon-search{
    font-size: 23px;
}
.navbar, .dropdown-menu{
background:rgb(31, 97, 141);
opacity: 0.9;
border: none;
}

.nav>li>a, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover, .dropdown-menu>li>a, .dropdown-menu>li{
  border-bottom: 3px solid transparent;
}
.nav>li>a:focus, .nav>li>a:hover,.nav .open>a, .nav .open>a:focus, .nav .open>a:hover, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover{
  border-bottom: 3px solid transparent;
  background: none;
}
.navbar a, .dropdown-menu>li>a, .dropdown-menu>li>a:focus, .dropdown-menu>li>a:hover, .navbar-toggle{
 color: #fff;
}
.dropdown-menu{
      -webkit-box-shadow: none;
    box-shadow:none;
}

.nav li:hover, .nav li.active{
  border-bottom: #85C1E9   3px solid;
}
.navbar-toggle .icon-bar{
    color: #fff;
    background: #fff;
}
#eti{
    color: white;
}
        </style>
    </head>
    <body>
    <div class="container-fluid">
                <nav class="navbar navbar-nav" style="z-index: 1; width: 100%;">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand " href="#">TeContrato.com</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav pull-right">
                         <li class=" dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Registrarse <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Candidato</a></li>
                                <li><a href="#"> Empresa</a></li>
                            </ul>
                        </li>
                        <li ><a href="#">Iniciar Sesión</a></li>
                       
                        
                    </ul>
                </div>
           
        </nav> 
       <!--Busqueda-->
        <div class="col-md-12 media well " id="buscador" >
                <div class="col-md-3"></div>
                <div class="col-md-6 " id="boxSearch">               
                    <form action="" method="" >
                        <div id="custom-search-input"  >
                        <div class="input-group">
                        <input class="form-control" type="text"  placeholder="Escribe el nombre de una empresa o cargo">
                       <span class="input-group-btn">
                       <button class="btn btn-info btn-lg" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                       </span>
                        </div>
                       </div>
                    </form>
               
                </div>
                <div class="col-md-3"></div>
            </div>
       <!--Sidebar Filtros
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
                    <ul class="nav navbar-nav" >
                        <li class="active" style="width: 100%; ">
                          <a href="#" data-toggle="collapse" class="collapsed">
                          <img src="imagenes/logo.png" height="100px">
                      </a>
                    </li>
                    <li style="width: 100%;">
                      <a href="#" id="eti" data-toggle="collapse" data-target="#toggleDemo" data-parent="#sidenav01" class="collapsed">
                      Empresas <span class="caret pull-right">
                      </a>
                      <div class="collapse" id="toggleDemo" style="height: 0px;">
                        <ul class="nav nav-list"></span>
                          <li><a href="#" id="eti">Ransa</a></li>
                          <li><a href="#" id="eti">Oceano</a></li>
                          <li><a href="#" id="eti">Seven</a></li>
                        </ul>
                      </div>
                    </li>
                    <li style="width: 100%;">
                      <a href="#" id="eti" data-toggle="collapse" data-target="#toggleDemo2" data-parent="#sidenav01" class="collapsed">
                      Cargos <span class="caret pull-right"></span>
                      </a>
                      <div class="collapse" id="toggleDemo2" style="height: 0px;">
                        <ul class="nav nav-list">
                          <li><a href="#" id="eti">Gerencia</a></li>
                          <li><a href="#" id="eti">Informática</a></li>
                          <li><a href="#" id="eti">Contabilidad</a></li>
                        </ul>
                      </div>
                    </li>
                    <li><a href="#" id="eti">Tipo de Contrato </a></li>
                    <li><a href="#" id="eti">Departamento </a></li>
                  </ul>
                  </div>
                </div>
              </div>
            </div>-->
            <!--Ofertas de trabajo-->
            <div class="row">
                <div class="col-md-1"></div>
            <div class="col-md-10 affix-content"> 
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
	
            </div>

<!-- Contact Section -->
<div class="w3-container w3-light-grey w3-center" id="contact">
  <h1 class="w3-xxlarge w3-text-black"><b>Contáctanos</b></h1>
  <div class="w3-row-padding" style="margin-top:16px">
    <div class="w3-third">
        <p><img src="imagenes/logo.png" height="250px"></p>      
    </div>
      <div class="w3-third">
          <form action="#" target="_blank" style="margin-top: 25px">
        <p><input class=" form-control" type="text" placeholder="Nombre" required name="Nombre"></p>
        <p><input class="form-control" type="email" placeholder="Correo eléctronico" required name="Correo"></p>
        <p><textarea class="form-control" lang="140"  placeholder="Mensaje" required name="Mensaje"></textarea></p>
        <p>
          <button class="btn btn-primary" type="submit">
            <i class="fa fa-paper-plane"></i> ENVIAR
          </button>
        </p>
      </form>
    </div>
    <div class="w3-third">
      <!-- Add Google Maps -->
      <div id="googleMap" class="w3-greyscale-max" style="width:100%;height:300px;"></div>
    </div>
  </div>
</div>

<!-- Footer -->
<footer class="w3-center">
    <div id="foot" >
    <a href="#home" class="w3-button w3-white" style="opacity: 0.8; margin-top: 20px;"><i class="fa fa-arrow-up "></i></a>
  <div class="w3-small w3-section">
    <p>Copyright &copy;2017 by <a id="copyRight" href="index.jsp" style="color: white;">TeContrato.com</a></p>
  </div>
  
    </div>
</footer>
    </div>
<script>
function myMap()
{
  myCenter=new google.maps.LatLng(41.878114, -87.629798);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
    </body>
</html>
