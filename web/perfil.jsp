<%-- 
    Document   : perfil
    Created on : 10-10-2017, 12:33:30 AM
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
    <script>
    function cargar(id , nom , gen, dir ,dep, nac,fecha,foto){
        document.frmPerfil.txtIdCandidato.value     = id;
        document.frmPerfil.txtNombre.value          = nom;
        document.frmPerfil.genero.value             = gen;
        document.frmPerfil.txtDireccion.value       = dir;
        document.frmPerfil.cmbDepto.value           = dep;
        document.frmPerfil.txtFechaNacimiento.value = fecha;
        document.frmPerfil.txtNacionalidad.value    = nac;
        document.frmPerfil.txtFoto.value            = foto;
    }
    function cargarIdioma(idioma,nivel){
        $('#cmbIdioma').val(idioma);
        $('#nivel').val(nivel) ;
    }
    function cargarCurso(titulo,ins,anio){
        $('#txtTitulo').val(titulo);
        $('#txtInstitucionC').val(ins);
       $('#txtAnioFinalizacion').val(anio);   
    }
    function cargarEducacion(especialidad,institucion,aniofin){
        $('#txtEspecialidad').val(especialidad);
        $('#txtInstitucion').val(institucion);
        $('#txtAnioFinalizacion').val(aniofin);
    }
    function cargarExperiencia(nivel){
        $('#cmbNivelExperiencia').val(nivel);
    }
    function cargarExperienciaLaboral(puesto,empresa,inicio,fin){
        $('#txtPuesto').val(puesto);
        $('#txtEmpresa').val(empresa);
        $('#txtFechaInicio').val(inicio);
        $('#txtFechaFin').val(fin);

    }
    function cargarHabilidad(habilidad,nivel){
        document.frmHabilidad.cmbHabilidad.value = habilidad;
        document.frmHabilidad.nivel.value        = nivel;
    }
    </script>
</head>
<body class="bodyFormulario" id="home">
<div class="container-fluid">
    <%
       CrudCurriculum      crudcv = new CrudCurriculum();
        CrudExperienciaLaboral cel = new CrudExperienciaLaboral();
        CrudCurso           crudc  = new CrudCurso();
        CrudEducacion       cedu = new CrudEducacion();
        CrudNivelExperiencia cne = new CrudNivelExperiencia();
        CrudCvHabilidad     cch  = new CrudCvHabilidad();
        CrudCvIdioma         cvi = new CrudCvIdioma();
        CrudHabilidad        ch  = new CrudHabilidad();
        CrudCvHabilidad     cvh  = new CrudCvHabilidad();
        CrudIdioma           ci  = new CrudIdioma();
        CrudCandidato       ccan = new CrudCandidato();
        CrudUsuario          cu  = new CrudUsuario();
        String name = (String) session.getAttribute("user");
       
        int idCandidato=0;
        Integer rol=0;
        
        if (session.getAttribute("user") != null){
            List<Candidato> lst = cu.obtenerDatosC(name);
            for(Candidato c : lst){ 
                idCandidato = c.getIdCandidato();
            }
           
            rol =(Integer) request.getSession().getAttribute("valor");
        }
        int  idcv = crudcv.ultimoId(idCandidato);
    %>    
    
    <div class="container-fluid">
        <div class="row" style="width: 100%; position: fixed;z-index: 10;">
            <jsp:include page="plantilla/menu.jsp" />
        </div>
    <!--Cambiar id  segun formulario con data-toggle="modal" data-target="#id" 
    con esto se manda a llamar el modal  en las etiquetas <a></a> o <button></button> -->
    
    <!--Nivel Experiencia-->
     <div class="modal fade" id="nivelExperiencia" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
        <div class="modal-dialog"  id="modal-dialog">
            <div class="panel panel-primary" id="panel-primary">
                <div class="panel-heading" id="panel-heading" >
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="panel-title" id="contactLabel">TeContrato.com</h4>
                </div>
             <!--Formulario-->
            <form action="procesarNivelExperiencia" method="post" name="frmNivelExperiencia" >
            <div class="modal-body" id="modalBody">               
                <div class="main-center">              
                    <h3><strong>NIVEL DE EXPERIENCIA</strong></h3>
                    <input type="hidden" name="txtIdCurriculum" value="<%=idcv %>" >
                    <input type="hidden" name="txtIdCandidato" value="<%=idCandidato%>">
                     <div class="form-group ">
                        <div class="cols-sm-10">
                            <div class="input-group"  id="select-dark">
                                <select name="cmbNivelExperiencia" id="cmbNivelExperiencia" class="form-control" id="dark" required="true">
                                    <option value="0">Seleccionar Nivel de experiencia</option> 
                                    <% List<NivelExperiencia> lst7 = cne.mostrarNivelExperiencia() ; 
                                    for(NivelExperiencia ne: lst7){%>
                                    <option value="<%=ne.getIdNivelExperiencia() %>"><%=ne.getNombreNivelExperiencia() %></option> 
                                    <%}%>
                                </select><br>
                            </div>
                        </div>
                     </div>     
                        <div id="botones">
                            <button type="submit" name="btnModificar" class="btn btn-primary fa fa-save"> Guardar</button>
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
            </form><!--End Formulario-->
        </div>
        </div>
    </div><!--End modal-->
    
    
    
    <!--Formulario Experiencia Laboral-->
     <div class="modal fade" id="experienciaLaboral" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
        <div class="modal-dialog"  id="modal-dialog">
            <div class="panel panel-primary" id="panel-primary">
                <div class="panel-heading" id="panel-heading" >
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="panel-title" id="contactLabel">TeContrato.com</h4>
                </div>
             <!--Formulario-->
            <form action="procesarExperienciaLaboral" method="post" name="frmExperienciaLaboral" >
            <div class="modal-body" id="modalBody">               
                <div class="main-center">              
                    <h3><strong>EXPERIENCIA LABORAL</strong></h3>
                    <input type="hidden" name="txtIdCurriculum" value="<%=idcv %>" >
                    <input type="hidden" name="txtIdRol" value="<%=rol %>">
                        <div class="form-group">
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"></span>
                                     <input type="text" name="txtPuesto" id="txtPuesto" placeholder="Puesto" class="form-control"> 
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"></span>
                                     <input type="text" name="txtEmpresa" id="txtEmpresa" placeholder="Empresa" class="form-control"> 
                                </div>
                            </div>
                        </div>       
                         <div class="form-group">
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"></span>
                                     <input type="date" class="form-control" name="txtFechaInicio"  id="txtFechaInicio" placeholder="Fecha Nacimiento" required="true"/>
                                </div>
                            </div>
                        </div>        
                         <div class="form-group">
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"></span>
                                     <input type="date" class="form-control" name="txtFechaFin" id="txtFechaFin" placeholder="Fecha Nacimiento" required="true"/>
                                </div>
                            </div>
                        </div>                           
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
            </form><!--End Formulario-->
        </div>
        </div>
    </div><!--End modal-->
    
    
    
    <!--Formulario Educacion Academica-->
    <div class="modal fade" id="educacion" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
        <div class="modal-dialog"  id="modal-dialog">
            <div class="panel panel-primary" id="panel-primary">
                <div class="panel-heading" id="panel-heading" >
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="panel-title" id="contactLabel">TeContrato.com</h4>
                </div>
             <!--Formulario-->
            <form action="procesarEducacion" method="post" name="frmEducacion" >
            <div class="modal-body" id="modalBody">               
                <div class="main-center">              
                    <h3><strong>EDUCACION ACADÉMICA</strong></h3>
                    <input type="hidden" name="txtIdCurriculum" value="<%=idcv %>" >
                    <input type="hidden" name="txtIdRol" value="<%=rol %>">
                      <div class="form-group">
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"></span>
                                   <input type="text" name="txtEspecialidad" id="txtEspecialidad" placeholder="Especialidad" class="form-control"> 
                                </div>
                            </div>
                        </div>               
                        <div class="form-group">
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"></span>
                                    <input type="text" name="txtInstitucion" id="txtInstitucion" placeholder="Institución" class="form-control"> 
                                </div>
                            </div>
                        </div>         
                         <div class="form-group">
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"></span>
                                    <input type="number" name="txtAnioFinalizacion" id="txtAnioFinalizacion" placeholder="1990" min="1990" max="2017" class="form-control"> 
                                </div>
                            </div>
                        </div>        
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
            </form><!--End Formulario-->
        </div>
        </div>
    </div><!--End modal-->
    
     <!--Formulario Cursos-->
    <div class="modal fade" id="cursos" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
        <div class="modal-dialog"  id="modal-dialog">
            <div class="panel panel-primary" id="panel-primary">
                <div class="panel-heading" id="panel-heading" >
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="panel-title" id="contactLabel">TeContrato.com</h4>
                </div>
             <!--Formulario-->
            <form action="procesarCurso" method="post" name="frmCursos" >
            <div class="modal-body" id="modalBody">               
                <div class="main-center">              
                    <h3><strong>CURSOS</strong></h3>
                    <input type="hidden" name="txtIdCurriculum" value="<%=idcv %>" >
                    <input type="hidden" name="txtIdRol" value="<%=rol %>">
                        <div class="form-group">
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"></span>
                                    <input type="text" name="txtTitulo" id="txtTitulo" placeholder="Titulo" class="form-control"> 
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"></span>
                                    <input type="text" name="txtInstitucion" id="txtInstitucionC" placeholder="Institución" class="form-control">
                                </div>
                            </div>
                        </div>   
                        <div class="form-group">
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"></span>
                                    <input type="number" name="txtAnioFinalizacion" id="txtAnioFinalizacion" value="2017" min="1990" max="2017" class="form-control"> 
                                </div>
                            </div>
                        </div>   
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
            </form><!--End Formulario-->
        </div>
        </div>
    </div><!--End modal-->
    
    
    
     <!--Formulario Idioma-->  
    <div class="modal fade" id="idioma" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
        <div class="modal-dialog"  id="modal-dialog">
            <div class="panel panel-primary" id="panel-primary">
                <div class="panel-heading" id="panel-heading" >
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="panel-title" id="contactLabel">TeContrato.com</h4>
                </div>
             <!--Formulario-->
            <form action="procesarCvIdioma" method="get" name="frmIdioma" >
            <div class="modal-body" id="modalBody">               
                <div class="main-center">              
                    <h3><strong>IDIOMA</strong></h3>
                    <input type="hidden" name="txtIdCurriculum"  value="<%=idcv %>" >
                    <input type="hidden" name="txtIdRol" value="<%=rol %>">
                    <div class="form-group ">
                        <div class="cols-sm-10">
                            <div class="input-group"  id="select-dark">
                                <select name="cmbIdioma" id="cmbIdioma"  class="form-control" id="dark" required="true">
                                    <option value="0">Seleccionar idioma</option> 
                                    <% List<Idioma> lst3 = ci.mostrarIdioma() ; for(Idioma i: lst3){%>
                                    <option value="<%=i.getIdIdioma() %>"><%=i.getNombreIdioma() %></option> 
                                    <%}%>
                                </select><br>
                            </div>
                        </div>
                     </div>          
                    <div class="form-group ">
                        <div class="cols-sm-10">
                            <div class="input-group" style="text-align: left;">
                                <p style="margin-left: 5%;">Nivel:</p>
                                <% List<Nivel> lst4 = cvh.listaNivel() ; for(Nivel n: lst4){%>
                                <input type="radio" id="<%=n.getNivel() %>"  name="nivel" id="nivel"  value="<%=n.getIdNivel() %>" name="radio-group" checked="" >
                                <label for="<%=n.getNivel() %>">&nbsp;<%=n.getNivel() %></label><br>
                                 <%}%>
                            </div>
                        </div>
                     </div>                 
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
            </form><!--End Formulario-->
        </div>
        </div>
    </div><!--End modal-->
    
    <!--Formulario Habilidad-->
    <div class="modal fade" id="habilidad" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
        <div class="modal-dialog"  id="modal-dialog">
            <div class="panel panel-primary" id="panel-primary">
                <div class="panel-heading" id="panel-heading" >
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="panel-title" id="contactLabel">TeContrato.com</h4>
                </div>
                 <!--Formulario-->
                <form action="procesarCvHabilidad" method="get" name="frmHabilidad" >
                <div class="modal-body" id="modalBody">               
                    <div class="main-center">
                        <h3><strong>HABILIDAD</strong></h3>
                        
                        <input type="hidden" name="txtIdCurriculum" value="<%=idcv%>"><!--Aqui idCurriculum-->
                        <input type="hidden" name="txtIdRol" value="<%=rol%>"><!--Aqui se debe modificar rol-->
                        
                       <div class="form-group ">
                            <div class="cols-sm-10">
                                <div class="input-group"  id="select-dark">
                                    <select name="cmbHabilidad" class="form-control" id="dark" required="true">
                                        <option value="0">Seleccionar habilidad</option> 
                                        <% List<Habilidad> lst5 = ch.listahabilidades();
                                           for(Habilidad h: lst5){
                                        %>
                                        <option value="<%=h.getIdHabilidad() %>"><%=h.getNombreHabilidad() %></option>
                                        <%}%>
                                    </select><br>
                                </div>
                            </div>
                     </div>          
                        <div class="form-group ">
                            <div class="cols-sm-10">
                                <div class="input-group" style="text-align: left;">
                                    <p style="margin-left: 5%;">Nivel:</p>
                                    <% List<Nivel> lst6 = cvh.listaNivel() ; for(Nivel n: lst6){%>
                                    <input type="radio" id="rh+<%=n.getIdNivel() %>"  name="nivel"  value="<%=n.getIdNivel() %>" name="radio-group" checked="">
                                    <label for="rh+<%=n.getIdNivel() %>">&nbsp;<%=n.getNivel() %></label><br>
                                     <%}%>
                                </div>
                            </div>
                         </div> 
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
                </form><!--End Formulario-->
            </div>
        </div>
    </div><!--End modal-->
    
 
    <div class="col-md-1"></div>
    <div class="col-md-6 main-perfil  " style="margin-top: 100px;">
      <!--Aqui se mostrara curriculum -->
        <h3><strong>CURRICULUM VITAE</strong> </h3>
        <p>Los datos del curriculum podran ser visualizados por toda empresa que lo consulte.</p>
                <form action="" method="get" name="frmExperienciaLaboral" >
            <table class="table table-bordered" id="tblMostrar" >
            <thead >
            <tr id="headertbl">
                <th colspan="2">NIVEL DE EXPERIENCIA <a id="button" class="btn btn-primary pull-right" href="" data-toggle="modal" data-target="#nivelExperiencia" onclick="cargarExperiencia(<>)" ><span class="glyphicon glyphicon-plus "></span> Agregar</a> </th>
             </tr>
           </thead>
           <tr>
               <td>
                   <% 
                        List<Curriculum>  cvne = crudcv.mostrarCurriculum(idcv);
                        for(Curriculum cv: cvne){
                    %>
                   <table border="0" style="border-bottom: 1px solid whitesmoke;">
                      <tr>
                          <td>Nivel de experiencia   :</td>
                          <td><%=cv.getNivelExperiencia().getNombreNivelExperiencia() %></td>
                          <td rowspan="2" style="width: 10%;"><a href="" class="link" data-toggle="modal" data-target="#nivelExperiencia" onclick="cargarExperiencia(<%= cv.getNivelExperiencia().getIdNivelExperiencia() %> )">seleccionar</a></td>
                      </tr>
                   </table>
                          <%}%>
               </td> 
           </tr>
        </table>
        </form>
        
        <form action="" method="get" name="frmExperienciaLaboral" >
            <table class="table table-bordered" id="tblMostrar">
            <thead >
            <tr id="headertbl">
                <th colspan="2">EXPERIENCIA LABORAL <a id="button" class="btn btn-primary pull-right" href="" data-toggle="modal" data-target="#experienciaLaboral" onclick="cargarExperienciaLaboral()" ><span class="glyphicon glyphicon-plus "></span> Agregar</a> </th>
             </tr>
           </thead>
           <tr>
               <td>
                   <% 
                        List<ExperienciaLaboral>  cvel = cel.mostrarExperienciaLaboral(idcv);
                        for(ExperienciaLaboral elab: cvel){
                    %>
                   <table border="0" style="border-bottom: 1px solid whitesmoke;" >
                      <tr>
                          <td>Cargo   :</td>
                          <td><%=elab.getPuesto() %></td>
                          <td rowspan="2" style="width: 10%;"><a href="" class="link" data-toggle="modal" data-target="#experienciaLaboral" onclick="cargarExperienciaLaboral('<%=elab.getPuesto() %>','<%=elab.getNombreEmpresa() %>','<%=elab.getFechaInicio() %>','<%=elab.getFechaFin() %>')" >seleccionar</a></td>
                      </tr>
                      <tr>
                          <td>Empresa    :</td>
                          <td><%=elab.getNombreEmpresa() %></td>
                      </tr>
                      <tr>
                          <td>Período    :</td>
                          <td> <%=elab.getFechaInicio() %> |  <%=elab.getFechaFin() %>  </td>
                      </tr>
                   </table>
                   <%}%>
               </td> 
           </tr>
        </table>
        </form>
        
          <form action="" method="" name="frmEducacion" >
            <table class="table table-bordered" id="tblMostrar">
            <thead >
            <tr id="headertbl">
                <th colspan="2">EDUCACIÓN ACADÉMICA<a id="button" class="btn btn-primary pull-right" href="" data-toggle="modal" data-target="#educacion" onclick="cargarEducacion()" ><span class="glyphicon glyphicon-plus "></span> Agregar</a></th>
             </tr>
           </thead>
           <tr>
               <td>
                    <% 
                        List<Educacion>  cveducacion = cedu.mostrarEducacion(idcv);
                        for(Educacion e: cveducacion){
                    %>
                   <table border="0" style="border-bottom: 1px solid whitesmoke;">
                      <tr>
                          <td>Especialidad/Titulo   :</td>
                          <td><%=e.getEspecialidad() %></td>
                          <td rowspan="2" style="width: 10%;"><a href="" class="link" data-toggle="modal" data-target="#educacion" onclick="cargarEducacion('<%=e.getEspecialidad()%>','<%=e.getInstitucion()%>','<%=e.getAnioFinalizacion()%>')">seleccionar</a></td>
                      </tr>
                      <tr>
                          <td>Institución    :</td>
                          <td><%=e.getInstitucion() %></td>
                      </tr>
                      <tr>
                          <td>Año de finalización    :</td>
                          <td><%=e.getAnioFinalizacion() %></td>
                      </tr>
                   </table>
                    <%}%>
               </td> 
           </tr>
        </table>
        </form>
        
        <form action="" method="" name="frmCursos" >
            <table class="table table-bordered" id="tblMostrar">
            <thead >
            <tr id="headertbl">
                <th colspan="2">CURSOS <a id="button" class="btn btn-primary pull-right" href="" data-toggle="modal" data-target="#cursos" onclick="cargarCurso()" ><span class="glyphicon glyphicon-plus "></span> Agregar</a></th>
             </tr>
           </thead>
           <tr>
               <td>
                   <%
                       List<Curso> cvcurso = crudc.mostrarCurso(idcv);
                       for(Curso c:cvcurso){
                   %>
                   <table border="0" style="border-bottom: 1px solid whitesmoke;">
                      <tr>
                          <td>Titulo   :</td>
                          <td><%=c.getTitulo() %></td>
                          <td rowspan="2" style="width: 10%;"><a   href="" data-toggle="modal" data-target="#cursos" onclick="cargarCurso('<%=c.getTitulo()%>','<%=c.getInstitucion()%>','<%=c.getAnioFinalizacion()%>')">seleccionar</a></td>
                      </tr>
                      <tr>
                          <td>Institución    :</td>
                          <td><%=c.getInstitucion() %></td>
                      </tr>
                      <tr>
                          <td>Año de finalización    :</td>
                          <td><%=c.getAnioFinalizacion() %></td>
                      </tr>
                   </table>
                   <%}%>
               </td> 
           </tr>
        </table>
        </form>
               

        <!--Tabla CvIdioma-->
        <form action="" method="" name="frmIdioma" >
            <table class="table table-bordered" id="tblMostrar">
                <thead >
                <tr id="headertbl">
                    <th colspan="2">IDIOMA <a id="button" class="btn btn-primary pull-right" href="" data-toggle="modal" data-target="#idioma" onclick="cargarIdioma()" ><span class="glyphicon glyphicon-plus "></span> Agregar</a></th>
                </tr>
               </thead>
               <tbody>
                <tr>
                    <td>
                        <% 
                        List<CvIdioma>  cvidioma = cvi.mostrarCvIdioma(idcv);
                        for(CvIdioma i:cvidioma){
                       %>
                       <table border="0" style="border-bottom: 1px solid whitesmoke;" >
                           <tr>
                               <td>Idioma    :</td>
                               <td><%=i.getIdioma().getNombreIdioma() %></td>
                               <td rowspan="2" style="width: 10%;"><a href="" data-toggle="modal" data-target="#idioma"  class="link" onclick="cargarIdioma(<%=i.getIdioma().getIdIdioma()%>,<%=i.getNivel().getIdNivel()%>)" >seleccionar</a></td>
                           </tr>
                           <tr>
                               <td>Nivel    :</td>
                               <td><%=i.getNivel().getNivel() %></td>
                           </tr>
                        </table>
                        <%}%>
                    </td>
                </tr>
               </tbody>
            </table>
        </form>
         
        <!--Tabla Habilidades-->
        <form action="" method="" name="frmHabilidades" >
            <table class="table table-bordered" id="tblMostrar">
                <thead >
                <tr id="headertbl">
                    <th colspan="2">HABILIDADES <a id="button" class="btn btn-primary pull-right" href="" data-toggle="modal" data-target="#habilidad" onclick="cargarHabilidad()" ><span class="glyphicon glyphicon-plus "></span> Agregar</a></th>
                </tr>
               </thead>
               <tbody>
                <tr>
                    <td>
                        <% 
                        List<CvHabilidad>  cvhabilidad = cch.mostrarCvHabilidad(idcv) ;
                        for(CvHabilidad h:cvhabilidad){
                       %>
                        <table border="0" style="border-bottom: 1px solid whitesmoke;" >
                            <tr>
                                <td>Habilidad    :</td>
                                <td><%=h.getHabilidad().getNombreHabilidad() %></td>
                                <td rowspan="2"  style="width: 10%;"><a  href="" data-toggle="modal" data-target="#habilidad" class="link" onclick="cargarHabilidad(<%=h.getHabilidad().getIdHabilidad() %>,<%=h.getNivel().getIdNivel() %>)">seleccionar</a></td> 
                            </tr>
                            <tr>
                                <td>Nivel    :</td>
                                <td><%=h.getNivel().getNivel() %></td>
                            </tr>
                        </table>
                        <%}%>
                    </td> 
                </tr>
               </tbody>
            </table>
        </form>
        
        <!--Boton Finalidar-->
        <center>
            <button type="submit" data-toggle="confirmation" name="btnModificar" id="buttonL"  class="btn btn-primary btn-lg btn-block " data-btn-ok-label="Si" data-btn-ok-icon="glyphicon glyphicon-share-alt"
                data-btn-ok-class="btn-success" data-btn-cancel-label="No" data-btn-cancel-icon="glyphicon glyphicon-ban-circle" data-btn-cancel-class="btn-danger"
                data-title="¿Está seguro de finalizar la edición de su curriculum?" data-content="Esto podría ser peligroso" ><span class="glyphicon glyphicon-saved "></span> Finalizar
            </button>
        </center>
    
</div><!--Fin de main-cv--> 
</div>
<div class="col-md-2"></div>
</div><!--End containerfluid -->
<!--Footer-->
<jsp:include page="plantilla/footer.jsp" />
</div><!--End Container-->
</body>
</html>
