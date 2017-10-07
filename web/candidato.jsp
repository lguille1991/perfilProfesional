<%-- 
    Document   : candidato
    Created on : 10-06-2017, 10:03:44 PM
    Author     : Kevin López
--%>

<%@page import="java.util.List"%>
<%@page import="com.tecontrato.modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="plantilla/libs.jsp"/>
        <title>Candidato</title>
    </head>
    <%CrudCandidato ccan=new CrudCandidato(); %>
    <body class="bodyFormulario">
        <div class="container-fluid">
            <jsp:include page="plantilla/menu.jsp" />
            
                <div class="row">
                    <div class="modal fade" id="candidato" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="panel panel-primary">
                                <div class="panel-heading" id="panel-heading" >
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    <h4 class="panel-title" id="contactLabel">TeContrato.com</h4>
                                </div>
                                 <!--Formulario-->
                                <form action="procesarUsuarioCandidato" method="post" name="frmUsuarioCandidato" >
                                    <div class="modal-body" id="modalBody">               
                                        <div class="row">
                                            <div class="col-md-2" ></div>
                                            <div class="col-md-8" >
                                                <h2>Usuario</h2>
                                                <label for="txtUsuario" class="control-label">Usuario</label>
                                                <input type="text"  name="txtUsuario" id="txtUsuario"   class="form-control" placeholder="Usuario" required="true"/>
                                                <br>
                                                <label for="txtUsuario" class="control-label">Contraseña</label>
                                                <input type="password" name="txtPass" id="txtPass"  class="form-control" placeholder="Contraseña" required="true" />
                                                <br>
                                                <label for="txtUsuario" class="control-label">Repetir Contraseña</label>
                                                <input type="password" name="txtPass2" id="txtPass2"  class="form-control" placeholder="Confirmar contraseña" required="true" />
                                                <br>
                                                <div id="botones">
                                                    <button type="submit" class="btn btn-success" name="btnGuardar">
                                                        <span class="glyphicon glyphicon-floppy-saved"></span> Guardar
                                                    </button>
                                                    <button type="reset" class="btn btn-primary">
                                                        <span class="glyphicon glyphicon-share-alt"></span> Cancelar
                                                    </button> 
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
                </div>
                
                <div class="row main">
                    <div class="main-login main-center">
                    <h2>Candidato</h2>
                            <form class="" method="post" action="#">

                                    <div class="form-group">
                                            <label for="codigo" class="cols-sm-2 control-label">Código</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-lock" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control" name="txtCodigo" id="txtCodigo"  placeholder="Código" required="true"/>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="form-group">
                                            <label for="depto" class="cols-sm-2 control-label">Departamento</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-globe" aria-hidden="true"></i></span>
                                                            <select name="cmbDepto" required="true" class="form-control">
                                                                <option value="">.::Seleccione Departamento::.</option>
                                                                <%
                                                                List<Departamento>ls=ccan.listaDepto();
                                                                for(Departamento depto:ls){
                                                                %>
                                                                <option value="<%=depto.getIdDepto() %>"><%=depto.getNombreDepto() %></option>
                                                            <%}%>
                                                            </select>
                                                    </div>
                                            </div>
                                    </div>
                                     
                                    <div class="form-group">
                                            <label for="genero" class="cols-sm-2 control-label">Genero</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-venus-mars" aria-hidden="true"></i></span>
                                                            <%
                                                            List<Genero>ls2=ccan.listaGenero();
                                                            for(Genero ge:ls2){
                                                            %>
                                                            <input type="radio" name="genero" id="genero" class="radio-inline" required="true" value="<%=ge.getIdGenero() %>"><%=ge.getGenero() %>
                                                            <%}%>
                                                    </div>
                                            </div>
                                    </div>                        
                                    
                                    <div class="form-group">
                                            <label for="nombre" class="cols-sm-2 control-label">Nombre</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control" name="txtNombre" id="txtNombre"  placeholder="Nombre" required="true"/>
                                                    </div>
                                            </div>
                                    </div>
                                    
                                    <div class="form-group">
                                            <label for="nacionalidad" class="cols-sm-2 control-label">Nacionalidad</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-map" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control" name="txtNacionalidad" id="txtNacionalidad"  placeholder="Nacionalidad" required="true"/>
                                                    </div>
                                            </div>
                                    </div>
                                   
                                    <div class="form-group">
                                            <label for="fechaNacimiento" class="cols-sm-2 control-label">Fecha Nacimiento</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control" name="txtFechaNacimiento" id="txtFechaNacimiento"  placeholder="Fecha Nacimiento" required="true"/>
                                                    </div>
                                            </div>
                                    </div>                
                                                    
                                    <div class="form-group">
                                            <label for="descrpcion" class="cols-sm-2 control-label">Dirección</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i></span>
                                                            <textarea class="form-control" rows="2" name="txtDireccion" id="txtDireccion" placeholder="Direccion..." required="true"></textarea>
                                                    </div>
                                            </div>
                                    </div>
                                    
                                    <div class="form-group">
                                            <label for="foto" class="cols-sm-2 control-label">Foto</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-picture" aria-hidden="true"></i></span>
                                                            <input type="file" class="form-control" name="fileFoto" id="fileFoto"  required="true"/>
                                                    </div>
                                            </div>
                                    </div>
                                                    
                                    <div class="form-group ">
                                            <a href="" data-toggle="modal" data-target="#candidato" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">Register</a>
                                    </div>

                            </form>
                    </div>
              </div>
        </div>      
        <jsp:include page="plantilla/footer.jsp"/> 
    </body>
</html>
