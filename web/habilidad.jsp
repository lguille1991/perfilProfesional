<%-- 
    Document   : habilidad
    Created on : 10-01-2017, 06:59:17 PM
    Author     : Maria Jose
--%>

<%@page import="com.tecontrato.modelo.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <jsp:include page="plantilla/libs.jsp" />
        <title>Habilidad</title>
        <script Language='JavaScript'>
          function cargar(codigo, nombreh)
          {
               $('#idhabilidad').val(codigo);
               $('#nombrehabilidad').val(nombreh);
          }
          
          $(document).ready(function(){
            $(" [data-toggle=confirmation]").confirmation({
            rootSelector: "[data-toggle=confirmation]",
            // other options
            popout:true,
            singleton:true
            });
          }); 
        </script>
</head>
<body id="home">
<div class="container-fluid">
<!--Barra de menú-->
<jsp:include page="plantilla/menu.jsp" />
<% CrudHabilidad cha = new CrudHabilidad(); %>
<div class="row">
    <!--Cambiar id modal-fade segun formulario con data-toggle="modal" data-target="#id" 
    con esto se manda a llamar el modal  en las etiquetas <a></a> o <button></button> -->
    <div class="modal fade" id="habilidad" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="panel panel-primary">
                <div class="panel-heading" id="panel-heading" >
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="panel-title" id="contactLabel">TeContrato.com</h4>
                </div>
                 <!--Formulario-->
                <form action="procesarHabilidad" method="post" name="frmHabilidad" >
                    <div class="modal-body" id="modalBody">               
                        <div class="row">
                            <div class="col-md-2" ></div>
                            <div class="col-md-8" >
                                <h2>Habilidad</h2>
                                <input type="text"  name="idhabilidad" id="idhabilidad"   class="form-control" placeholder="Código" readonly="true"/>
                                <input type="text" name="nombrehabilidad" id="nombrehabilidad"  class="form-control" placeholder="Nombre"  required="true" />
                                <div id="botones">
                                    <button type="submit" name="btnGuardar" class="btn btn-primary fa fa-save"> Guardar</button>
                                    <button type="submit" data-toggle="confirmation" name="btnModificar" class="btn btn-warning fa fa-undo" data-btn-ok-label="Si" data-btn-ok-icon="glyphicon glyphicon-share-alt"
                                    data-btn-ok-class="btn-success" data-btn-cancel-label="No" data-btn-cancel-icon="glyphicon glyphicon-ban-circle" data-btn-cancel-class="btn-danger"
                                    data-title="¿Está seguro de modificar el registro?" data-content="Esto podría ser peligroso"> Modificar</button>
                                    <button type="submit" data-toggle="confirmation" name="btnEliminar" class="btn btn-danger fa fa-close" data-btn-ok-label="Si" data-btn-ok-icon="glyphicon glyphicon-share-alt"
                                    data-btn-ok-class="btn-success" data-btn-cancel-label="No" data-btn-cancel-icon="glyphicon glyphicon-ban-circle" data-btn-cancel-class="btn-danger"
                                    data-title="¿Está seguro de eliminar el registro?" data-content="Esto podría ser peligroso"> Eliminar</button>
                                    <button type="reset"  class="btn btn-primary fa fa-undo" title="Limpiar campos"></button>  
                                </div>
                            </div>
                            <div class="col-md-2" ></div>
                        </div>
                    </div>         
                </form> 
                <!--End Formulario-->
            </div>
        </div>
    </div><!--End modal-->
</div><!--End Row-->
 <div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <h2>Habilidad</h2>
        <!--Tabla para mostrar registros-->  
        <a   class="btn btn-primary"  href="" data-toggle="modal" data-target="#habilidad"  onclick="cargar()" >Nuevo</a><br>
        <input type="text" name="search"  id="buscar" placeholder="Busqueda">

        <table class="w3-table-all " id="tblMostrar">
            <thead >
            <tr id="headertbl">
               <th>Código</th>
               <th>Habilidad</th>
               <th>Acción</th>
             </tr>
           </thead>
            <%
             List<Habilidad> ls = cha.listahabilidades();
             for( Habilidad h:ls){
           %>
           <tr>
               <td><%= h.getIdHabilidad() %> </td>
               <td><%= h.getNombreHabilidad() %></td>
               <td id="colAccion" >
                  <a   class="btn btn-primary" href="" data-toggle="modal" data-target="#habilidad" onclick="cargar(<%= h.getIdHabilidad()%>,'<%=h.getNombreHabilidad() %>')" >Seleccionar</a>
               </td>
           </tr>
           <% } %>
       </table>
    </div>
    <div class="col-md-1"></div>
 </div><!--End Row-->
<!--Footer-->
<jsp:include page="plantilla/footer.jsp" />
</div><!--End Container-->
</body>
</html>
