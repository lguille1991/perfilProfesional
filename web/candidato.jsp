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
    <body id="home" class="bodyFormulario">
    <div class="container-fluid">
    <!--Barra de menú-->
    <jsp:include page="plantilla/menu.jsp" />
    <% CrudCandidato ccan=new CrudCandidato(); %>
    <div class="row">
    <!--Cambiar id modal-fade segun formulario con data-toggle="modal" data-target="#id" 
    con esto se manda a llamar el modal  en las etiquetas <a></a> o <button></button> -->
                 <!--Formulario-->
                <form action="procesarCandidato" method="post" name="frmCandidato" >              
                        <div class="row">
                            <div class="col-md-4" ></div>
                            <div class="col-md-4" >
                                <h2>Candidato</h2>
                                <input type="text"  name="txtIdCandidato" id="idCandidato"   class="form-control" placeholder="Código" readonly="true"/>
                                <select name="cmbDepto" class="form-control" required="true">
                                    <option value="">.::Seleccione Departamento::.</option>
                                    <%
                                    List<Departamento> ls=ccan.listaDepto();
                                    for(Departamento depto:ls){
                                    %>
                                    <option value="<%= depto.getIdDepto() %>"><%=depto.getNombreDepto() %></option>
                                    <%}%>
                                </select>
                                    <%
                                    List<Genero> ls2=ccan.listaGenero();
                                    for(Genero ge:ls2){
                                    %>
                                    <label class="radio-inline">
                                        &nbsp;&nbsp;&nbsp;<input type="radio" name="genero" id="genero" value="<%=ge.getIdGenero() %>"  required="true" /><%=ge.getGenero() %>
                                    </label>
                                    <%}%>
                                <input type="text" name="txtNombre" id="nombre"  class="form-control" placeholder="Nombre"  required="true" />
                                <input type="text" name="txtNacionalidad" id="nacionalidad"  class="form-control" placeholder="Nacionalidad"  required="true" />
                                <input type="text" name="txtFechanacimiento" id="fechanacimiento"  class="form-control" placeholder="Fecha Nacimiento"  required="true" />
                                <textarea name="txtDireccion" id="direccion" class="form-control" placeholder="Dirección..." rows="3" required="true"></textarea>
                                <input type="file" name="fileFoto" class="form-control" required="true"/>    
                                
                                <div id="botones">
                                    <button type="submit" name="btnInsertar" class="btn btn-primary"> 
                                        <span class="glyphicon glyphicon-floppy-saved"></span> Registrarse
                                    </button>
                                    
                                    <button type="reset"  class="btn btn-danger fa fa-undo" title="Limpiar campos"></button>  
                                </div>
                            </div>
                            <div class="col-md-4" ></div>
                        </div>         
                </form> 
                <!--End Formulario-->
    </div><!--End Row-->
    <!--Footer-->
    <jsp:include page="plantilla/footer.jsp" />
    </div><!--End Container-->
</body>
</html>
