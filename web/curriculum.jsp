<%-- 
    Document   : curriculum
    Created on : 10-06-2017, 11:12:58 PM
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
    <title>Curriculum</title>
    <script>
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
<body class="bodyFormulario" id="home">
<%

        CrudHabilidad ch    = new CrudHabilidad();
        CrudCvHabilidad cvh = new CrudCvHabilidad();
        CrudIdioma ci       = new CrudIdioma();
        if (session.getAttribute("user") != null){
            response.sendRedirect("index.jsp");
        }
%>    
    <div class="container-fluid">
        <div class="row" style="width: 100%; position: fixed;z-index: 10;">
            <jsp:include page="plantilla/menu.jsp" />
        </div> 
        <div style="margin-top: 60px;">
            ${respuesta}
        </div>
<div class="row">
    <!--Cambiar id  segun formulario con data-toggle="modal" data-target="#id" 
    con esto se manda a llamar el modal  en las etiquetas <a></a> o <button></button> -->
    <div class="modal fade" id="habilidad" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="panel panel-primary">
                <div class="panel-heading" id="panel-heading" >
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="panel-title" id="contactLabel">TeContrato.com</h4>
                </div>
                 <!--Formulario-->
                <form action="" method="post" name="frmHabilidad" >
                    <div class="modal-body" id="modalBody">               
                        <div class="row">
                            <div class="col-md-3" ></div>
                            <div class="col-md-6" >
                                <h2>Habilidad</h2>
                                <input type="text" name="txtIdCurriculum" style="display: none;">
                                <select name="cmbHabilidad" class="form-control" required="true">
                                    <option value="0">Seleccionar habilidad</option> 
                                    <% List<Habilidad> lst5 = ch.listahabilidades();
                                       for(Habilidad h: lst5){
                                    %>
                                    <option value="<%=h.getIdHabilidad() %>"><%=h.getNombreHabilidad() %></option>
                                    <%}%>
                                </select>
                                <p style="margin-left: 5%;">Nivel:</p>
                                    <% List<Nivel> lst6 = cvh.listaNivel() ;
                                       for(Nivel n: lst6){
                                    %>
                                    <input type="radio" name="nivel" style="margin-left: 5%;" value="<%=n.getIdNivel() %>" ><%=n.getNivel() %><br>
                                    <%}%>  
                            </div>
                            <div class="col-md-3" ></div>
                            <div class="col-md-12">
                                <div id="botones">
                                    <button type="submit" name="btnGuardar" class="btn btn-primary "> <span class="glyphicon glyphicon-floppy-disk"></span>Guardar</button>
                                    <button type="submit" data-toggle="confirmation" name="btnModificar" class="btn btn-warning " data-btn-ok-label="Si" data-btn-ok-icon="glyphicon glyphicon-share-alt"
                                    data-btn-ok-class="btn-success" data-btn-cancel-label="No" data-btn-cancel-icon="glyphicon glyphicon-ban-circle" data-btn-cancel-class="btn-danger"
                                    data-title="¿Está seguro de modificar el registro?" data-content="Esto podría ser peligroso"><span class="glyphicon glyphicon-pencil"></span>Modificar</button>
                                    <button type="submit" data-toggle="confirmation" name="btnEliminar" class="btn btn-danger" data-btn-ok-label="Si" data-btn-ok-icon="glyphicon glyphicon-share-alt"
                                    data-btn-ok-class="btn-success" data-btn-cancel-label="No" data-btn-cancel-icon="glyphicon glyphicon-ban-circle" data-btn-cancel-class="btn-danger"
                                    data-title="¿Está seguro de eliminar el registro?" data-content="Esto podría ser peligroso"><span class="glyphicon glyphicon-remove"></span>Eliminar</button>
                                    <button type="reset"  class="btn btn-primary" >Cancelar</button>  
                                </div>
                            </div>
                        </div>
                    </div>         
                </form><!--End Formulario-->
            </div>
        </div>
    </div><!--End modal-->
        <div class="modal fade" id="idioma" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="panel panel-primary">
                <div class="panel-heading" id="panel-heading" >
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="panel-title" id="contactLabel">TeContrato.com</h4>
                </div>
                 <!--Formulario-->
                <form action="" method="post" name="frmIdioma" >
                    <div class="modal-body" id="modalBody">               
                        <div class="row">
                            <div class="col-md-3" ></div>
                            <div class="col-md-6" >
                                <h2>Idioma</h2>
                                <input type="text" name="txtIdCurriculum" style="display: none;">
                                <select name="cmbIdioma" class="form-control" required="true">
                                    <option value="0">Seleccionar idioma</option> 
                                    <% List<Idioma> lst3 = ci.mostrarIdioma() ;
                                       for(Idioma i: lst3){
                                    %>
                                    <option value="<%=i.getIdIdioma() %>"><%=i.getNombreIdioma() %></option>
                                    <%}%>
                                </select>
                                <p style="margin-left: 5%;">Nivel:</p>
                                    <% List<Nivel> lst4 = cvh.listaNivel() ;
                                       for(Nivel n: lst4){
                                    %>
                                    <input type="radio" name="nivel" style="margin-left: 5%;" value="<%=n.getIdNivel() %>" ><%=n.getNivel() %><br>
                                    <%}%>  
                            </div>
                            <div class="col-md-3" ></div>
                            <div class="col-md-12">
                                <div id="botones">
                                    <button type="submit" name="btnGuardar" class="btn btn-primary "> <span class="glyphicon glyphicon-floppy-disk"></span>Guardar</button>
                                    <button type="submit" data-toggle="confirmation" name="btnModificar" class="btn btn-warning " data-btn-ok-label="Si" data-btn-ok-icon="glyphicon glyphicon-share-alt"
                                    data-btn-ok-class="btn-success" data-btn-cancel-label="No" data-btn-cancel-icon="glyphicon glyphicon-ban-circle" data-btn-cancel-class="btn-danger"
                                    data-title="¿Está seguro de modificar el registro?" data-content="Esto podría ser peligroso"><span class="glyphicon glyphicon-pencil"></span>Modificar</button>
                                    <button type="submit" data-toggle="confirmation" name="btnEliminar" class="btn btn-danger" data-btn-ok-label="Si" data-btn-ok-icon="glyphicon glyphicon-share-alt"
                                    data-btn-ok-class="btn-success" data-btn-cancel-label="No" data-btn-cancel-icon="glyphicon glyphicon-ban-circle" data-btn-cancel-class="btn-danger"
                                    data-title="¿Está seguro de eliminar el registro?" data-content="Esto podría ser peligroso"><span class="glyphicon glyphicon-remove"></span>Eliminar</button>
                                    <button type="reset"  class="btn btn-primary" >Cancelar</button>  
                                </div>
                            </div>
                        </div>
                    </div>         
                </form> 
                <!--End Formulario-->
            </div>
        </div>
    </div><!--End modal-->
        <div class="modal fade" id="cursos" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="panel panel-primary">
                <div class="panel-heading" id="panel-heading" >
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="panel-title" id="contactLabel">TeContrato.com</h4>
                </div>
                 <!--Formulario-->
                <form action="" method="post" name="frmCursos" >
                    <div class="modal-body" id="modalBody">               
                        <div class="row">
                            <div class="col-md-3" ></div>
                            <div class="col-md-6" >
                                <h2>Idioma</h2>
                                <input type="text" name="txtIdCurriculum" style="display: none;">
                                <input type="text" name="txtTitulo" placeholder="Titulo" class="form-control"> 
                                <input type="text" name="txtInstitucion" placeholder="Institución" class="form-control">
                                <input type="number" name="txtAnioFinalizacion" placeholder="1990" min="1990" max="2017" class="form-control"> 
                            </div>
                            <div class="col-md-3" ></div>
                            <div class="col-md-12">
                                <div id="botones">
                                    <button type="submit" name="btnGuardar" class="btn btn-primary "> <span class="glyphicon glyphicon-floppy-disk"></span>Guardar</button>
                                    <button type="submit" data-toggle="confirmation" name="btnModificar" class="btn btn-warning " data-btn-ok-label="Si" data-btn-ok-icon="glyphicon glyphicon-share-alt"
                                    data-btn-ok-class="btn-success" data-btn-cancel-label="No" data-btn-cancel-icon="glyphicon glyphicon-ban-circle" data-btn-cancel-class="btn-danger"
                                    data-title="¿Está seguro de modificar el registro?" data-content="Esto podría ser peligroso"><span class="glyphicon glyphicon-pencil"></span>Modificar</button>
                                    <button type="submit" data-toggle="confirmation" name="btnEliminar" class="btn btn-danger" data-btn-ok-label="Si" data-btn-ok-icon="glyphicon glyphicon-share-alt"
                                    data-btn-ok-class="btn-success" data-btn-cancel-label="No" data-btn-cancel-icon="glyphicon glyphicon-ban-circle" data-btn-cancel-class="btn-danger"
                                    data-title="¿Está seguro de eliminar el registro?" data-content="Esto podría ser peligroso"><span class="glyphicon glyphicon-remove"></span>Eliminar</button>
                                    <button type="reset"  class="btn btn-primary" >Cancelar</button>  
                                </div>
                            </div>
                        </div>
                    </div>         
                </form> 
                <!--End Formulario-->
            </div>
        </div>
    </div><!--End modal-->
    <div class="modal fade" id="experienciaLaboral" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="panel panel-primary">
                <div class="panel-heading" id="panel-heading" >
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="panel-title" id="contactLabel">TeContrato.com</h4>
                </div>
                 <!--Formulario-->
                <form action="" method="post" name="frmExperienciaLaboral" >
                    <div class="modal-body" id="modalBody">               
                        <div class="row">
                            <div class="col-md-3" ></div>
                            <div class="col-md-6" >
                                <h2>Experiencia Laboral</h2>
                                <input type="text" name="txtIdCurriculum" style="display: none;">
                                <input type="text" name="txtPuesto" placeholder="Puesto" class="form-control"> 
                                <input type="text" name="txtEmpresa" placeholder="Empresa" class="form-control">
                                <input type="number" name="txtAnioInicio" placeholder="1990" min="1990" max="2017" class="form-control">
                                <input type="number" name="txtAnioFinalizacion" placeholder="1990" min="1990" max="2017" class="form-control"> 
                            </div>
                            <div class="col-md-3" ></div>
                            <div class="col-md-12">
                                <div id="botones">
                                    <button type="submit" name="btnGuardar" class="btn btn-primary "> <span class="glyphicon glyphicon-floppy-disk"></span>Guardar</button>
                                    <button type="submit" data-toggle="confirmation" name="btnModificar" class="btn btn-warning " data-btn-ok-label="Si" data-btn-ok-icon="glyphicon glyphicon-share-alt"
                                    data-btn-ok-class="btn-success" data-btn-cancel-label="No" data-btn-cancel-icon="glyphicon glyphicon-ban-circle" data-btn-cancel-class="btn-danger"
                                    data-title="¿Está seguro de modificar el registro?" data-content="Esto podría ser peligroso"><span class="glyphicon glyphicon-pencil"></span>Modificar</button>
                                    <button type="submit" data-toggle="confirmation" name="btnEliminar" class="btn btn-danger" data-btn-ok-label="Si" data-btn-ok-icon="glyphicon glyphicon-share-alt"
                                    data-btn-ok-class="btn-success" data-btn-cancel-label="No" data-btn-cancel-icon="glyphicon glyphicon-ban-circle" data-btn-cancel-class="btn-danger"
                                    data-title="¿Está seguro de eliminar el registro?" data-content="Esto podría ser peligroso"><span class="glyphicon glyphicon-remove"></span>Eliminar</button>
                                    <button type="reset"  class="btn btn-primary" >Cancelar</button>  
                                </div>
                            </div>
                        </div>
                    </div>         
                </form> 
                <!--End Formulario-->
            </div>
        </div>
    </div><!--End modal-->
  <div class="modal fade" id="educacion" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="panel panel-primary">
                <div class="panel-heading" id="panel-heading" >
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="panel-title" id="contactLabel">TeContrato.com</h4>
                </div>
                 <!--Formulario-->
                <form action="" method="post" name="frmEducacion" >
                    <div class="modal-body" id="modalBody">               
                        <div class="row">
                            <div class="col-md-3" ></div>
                            <div class="col-md-6" >
                                <h2>Educación Académica</h2>
                                <input type="text" name="txtIdCurriculum" style="display: none;">
                                <input type="text" name="txtEspecialidad" placeholder="Especialidad" class="form-control"> 
                                <input type="text" name="txtInstitucion" placeholder="Institución" class="form-control">
                                <input type="number" name="txtAnioFinalizacion" placeholder="1990" min="1990" max="2017" class="form-control"> 
                            </div>
                            <div class="col-md-3" ></div>
                            <div class="col-md-12">
                                <div id="botones">
                                    <button type="submit" name="btnGuardar" class="btn btn-primary fa fa-save"> Guardar</button>
                                    <button type="submit" data-toggle="confirmation" name="btnModificar" class="btn btn-warning fa fa-undo" data-btn-ok-label="Si" data-btn-ok-icon="glyphicon glyphicon-share-alt"
                                    data-btn-ok-class="btn-success" data-btn-cancel-label="No" data-btn-cancel-icon="glyphicon glyphicon-ban-circle" data-btn-cancel-class="btn-danger"
                                    data-title="¿Está seguro de modificar el registro?" data-content="Esto podría ser peligroso"> Modificar</button>
                                    <button type="submit" data-toggle="confirmation" name="btnEliminar" class="btn btn-danger fa fa-close" data-btn-ok-label="Si" data-btn-ok-icon="glyphicon glyphicon-share-alt"
                                    data-btn-ok-class="btn-success" data-btn-cancel-label="No" data-btn-cancel-icon="glyphicon glyphicon-ban-circle" data-btn-cancel-class="btn-danger"
                                    data-title="¿Está seguro de eliminar el registro?" data-content="Esto podría ser peligroso"> Eliminar</button>
                                    <button type="reset"  class="btn btn-primary" >Cancelar</button>  
                                </div>
                            </div>
                        </div>
                    </div>         
                </form> 
                <!--End Formulario-->
            </div>
        </div>
    </div><!--End modal-->
   
</div><!--End Row-->
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <h2>Curriculum vitae</h2>
        <p>Cuando tu currículo sea consultado por una empresa esta podrá visualizar todos los datos del mismo.</p>
        <form action="" method="" name="frmExperienciaLaboral" >
            <table class="table table-bordered" id="tblMostrar">
            <thead >
            <tr id="headertbl">
                <th colspan="2">EXPERIENCIA LABORAL <a class="btn btn-primary pull-right" href="" data-toggle="modal" data-target="#experienciaLaboral" onclick="" ><span class="glyphicon glyphicon-plus "></span> Agregar</a> </th>
             </tr>
           </thead>
           <tr>
               <td>
                   <table border="0" style="width: 100%; padding: 5px;">
                      <tr>
                          <td>Cargo   :</td>
                          <td></td>
                          <td rowspan="2" style="width: 10%;"><a>seleccionar</a></td>
                      </tr>
                      <tr>
                          <td>Empresa    :</td>
                          <td></td>
                      </tr>
                      <tr>
                          <td>Período    :</td>
                          <td> Año Inicio | Año Finalización </td>
                      </tr>
                   </table>
               </td> 
           </tr>
        </table>
        </form>
        <form action="" method="" name="frmEducacion" >
            <table class="table table-bordered" id="tblMostrar">
            <thead >
            <tr id="headertbl">
                <th colspan="2">EDUCACIÓN ACADÉMICA <a class="btn btn-primary pull-right" href="" data-toggle="modal" data-target="#educacion" onclick="" ><span class="glyphicon glyphicon-plus "></span> Agregar</a></th>
             </tr>
           </thead>
           <tr>
               <td>
                   <table border="0" style="width: 100%;">
                      <tr>
                          <td>Especialidad   :</td>
                          <td></td>
                          <td rowspan="2" style="width: 10%;"><a>seleccionar</a></td>
                      </tr>
                      <tr>
                          <td>Institución    :</td>
                          <td></td>
                      </tr>
                      <tr>
                          <td>Año de finalización    :</td>
                          <td></td>
                      </tr>
                   </table>
               </td> 
           </tr>
        </table>
        </form>
        <form action="" method="" name="frmCurso" >
            <table class="table table-bordered" id="tblMostrar">
            <thead >
            <tr id="headertbl">
                <th colspan="2">CURSOS <a class="btn btn-primary pull-right" href="" data-toggle="modal" data-target="#cursos" onclick="" ><span class="glyphicon glyphicon-plus "></span> Agregar</a></th>
             </tr>
           </thead>
           <tr>
               <td>
                   <table border="0" style="width: 100%;">
                      <tr>
                          <td>Titulo   :</td>
                          <td></td>
                          <td rowspan="2" style="width: 10%;"><a>seleccionar</a></td>
                      </tr>
                      <tr>
                          <td>Institución    :</td>
                          <td></td>
                      </tr>
                      <tr>
                          <td>Año de finalización    :</td>
                          <td></td>
                      </tr>
                   </table>
               </td> 
           </tr>
        </table>
        </form>
        <form action="" method="" name="frmIdioma" >
            <table class="table table-bordered" id="tblMostrar">
            <thead >
            <tr id="headertbl">
                <th colspan="2">IDIOMA <a class="btn btn-primary pull-right" href="" data-toggle="modal" data-target="#idioma" onclick="" ><span class="glyphicon glyphicon-plus "></span> Agregar</a></th>
             </tr>
           </thead>
           <tr>
               <td>
                    <table border="0" style="width: 100%;">
                      <tr>
                          <td>Idioma    :</td>
                          <td></td>
                          <td rowspan="2" style="width: 10%;"><a>seleccionar</a></td>
                      </tr>
                      <tr>
                          <td>Nivel    :</td>
                          <td></td>
                      </tr>
                   </table>
               </td>
           </tr>
        </table>
        </form>
        <form action="" method="" name="frmHabilidades" >
            <table class="table table-bordered" id="tblMostrar">
            <thead >
            <tr id="headertbl">
                <th colspan="2">HABILIDADES <a class="btn btn-primary pull-right" href="" data-toggle="modal" data-target="#habilidad" onclick="" ><span class="glyphicon glyphicon-plus "></span> Agregar</a></th>
             </tr>
           </thead>
           <tr>
               <td>
                   <table border="0" style="width: 100%;">
                           <tr>
                               <td>Habilidad    :</td>
                               <td></td>
                               <td rowspan="2" style="width: 10%;"><a>seleccionar</a></td>
                           </tr>
                           <tr>
                               <td>Nivel    :</td>
                               <td></td>
                           </tr>
                   </table>
               </td> 
           </tr>
        </table>
        </form>
        <center><button type="submit" data-toggle="confirmation" name="btnModificar" class="btn btn-info" data-btn-ok-label="Si" data-btn-ok-icon="glyphicon glyphicon-share-alt"
                data-btn-ok-class="btn-success" data-btn-cancel-label="No" data-btn-cancel-icon="glyphicon glyphicon-ban-circle" data-btn-cancel-class="btn-danger"
                data-title="¿Está seguro de finalizar la edición de su curriculum?" data-content="Esto podría ser peligroso"><span class="glyphicon glyphicon-saved "></span> Finalizar</button></center>
    </div>
    <div class="col-md-3"></div>
 </div><!--End Row-->
<!--Footer-->
<jsp:include page="plantilla/footer.jsp" />
</div><!--End Container-->
</body>
</html>