<%-- 
    Document   : candidato
    Created on : 10-06-2017, 10:03:44 PM
    Author     : Kevin López
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
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
    <body class="bodyFormulario" id="home">
    <%
        CrudCandidato ccan=new CrudCandidato(); 
        HttpSession sess = request.getSession(true); //use false to use the existing session
        String idu = (String) sess.getAttribute("txtIdUsuario");
        if (session.getAttribute("user") != null){
            response.sendRedirect("index.jsp");
        }
    %>    
    <div class="container-fluid">
        <div class="row" style="width: 100%; position: fixed;z-index: 10;">
            <jsp:include page="plantilla/menu.jsp" />
        </div> 
                <div class="row main">
                    <div class="main-login main-center">
                    <h2>Candidato</h2>
                            <form class="" method="get" action="procesarCandidato">
                                    
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
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                        <input type="hidden" class="form-control" name="txtCodigo" id="txtCodigo"  placeholder="Código" required="true" value="<%=idu %>"/>
                                                    </div>
                                            </div>
                                    </div>
                                
                                    <div class="form-group">
                                            <label for="genero" class="cols-sm-2 control-label">Genero</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-venus-mars" aria-hidden="true"></i></span>
                                                            <input type="radio" id="test1" name="genero" required="true" value="1" checked>
                                                            <label for="test1">Femenino</label>
                                                            <input type="radio" id="test2" name="genero" required="true" value="2">
                                                            <label for="test2">Masculino</label>
                                                    </div>
                                            </div>
                                    </div> 

                                    <div class="form-group">
                                            <label for="depto" class="cols-sm-2 control-label">Departamento</label>
                                            <div class="cols-sm-10">
                                                <div class="input-group" id="select-dark">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-globe" aria-hidden="true"></i></span>
                                                            <select name="cmbDepto" id="dark" required="true" class="form-control">
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
                                                            <input type="date" class="form-control" name="txtFechaNacimiento" id="txtFechaNacimiento" placeholder="Fecha Nacimiento" required="true"/>
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
                                    
                                    <div class="form-group ">
                                                <label for="foto" class="cols-sm-2 control-label">Foto</label>
                                                <div class="cols-sm-10">    
                                                    <div class="input-group image-preview" style="text-align: right;" >
                                                    <!-- image-preview-filename -->
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-picture" aria-hidden="true"></i></span>
                                                    <input type="text" class="form-control image-preview-filename" name="txtFoto" disabled="" id="archivo" required="true">
                                                        <span class="input-group-btn">
                                                            <!-- image-preview-clear -->
                                                            <button type="button" class="btn btn-default image-preview-clear" style="display:none;height: 36px;">
                                                                <span class="glyphicon glyphicon-remove"></span>
                                                            </button>
                                                            <!-- image-preview-input -->
                                                            <div class="btn btn-default image-preview-input">
                                                                <span class="glyphicon glyphicon-folder-open"></span>
                                                                <span class="image-preview-input-title">Subir Foto</span>
                                                                <input type="file" name="foto" accept="image/png, image/jpeg, image/gif" required="true" />
                                                            </div>
                                                        </span> <!-- /input-group-btn -->
                                                    </div><!-- /input-group [image preview] --> 
                                                </div>
                                        </div>
                                                    
                                    <div id="botones">
                                        <button type="submit" class="btn btn-success" name="btnGuardar">
                                            <span class="glyphicon glyphicon-floppy-saved"></span> Guardar
                                        </button>
                                        <button type="reset" class="btn btn-primary">
                                            <span class="glyphicon glyphicon-share-alt"></span> Cancelar
                                        </button> 
                                    </div>

                            </form>
                    </div>
              </div>
        </div>      
        <jsp:include page="plantilla/footer.jsp"/> 
    </body>
</html>