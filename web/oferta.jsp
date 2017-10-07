<%-- 
    Document   : oferta
    Created on : 10-07-2017, 10:04:19 AM
    Author     : Alexis
--%>

<%@page import="com.tecontrato.modelo.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="plantilla/libs.jsp"/>
        <% 
            CrudArea crar   = new CrudArea();
            CrudCargo crca  = new CrudCargo();
            CrudNivelExperiencia crne = new CrudNivelExperiencia();
            CrudTipoContratacion crtc = new CrudTipoContratacion();
            CrudCandidato crucand = new CrudCandidato();
            CrudEmpresa crempre = new CrudEmpresa();
        %>
        <title>Oferta</title>
    </head>
    <body class="bodyFormulario">
        <div class="container-fluid">
            <jsp:include page="plantilla/menu.jsp" />
                <div class="row main">
                    <div class="main-login main-center">
                    <h2>Oferta</h2>
                            <form class="" method="post" action="#">

                                    <div class="form-group">
                                            <label for="codigo" class="cols-sm-2 control-label">Codigo</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-hashtag" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control" name="txtCodigo" id="txtCodigo"  placeholder="Codigo" readonly="true"/>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="form-group">
                                            <label for="area" class="cols-sm-2 control-label">Área</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-crosshairs" aria-hidden="true"></i></span>
                                                            <select name="cmbArea" id="cmbArea" class="form-control" >
                                                                <option value="0">.:Seleccione un área:.</option>
                                                                <%
                                                                    List<Area> lstArea = crar.mostrarArea();
                                                                    for(Area ar:lstArea){
                                                                %>
                                                                <option value="<%=ar.getIdArea()%>"><%=ar.getNombreArea()%></option>
                                                                <%}%>
                                                            </select>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="form-group">
                                            <label for="cargo" class="cols-sm-2 control-label">Cargo</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="	fa fa-id-card-o" aria-hidden="true"></i></span>
                                                            <select name="cmbCargo" id="cmbCargo" class="form-control" >
                                                                <option value="0">.:Seleccione un cargo:.</option>
                                                                <%
                                                                    List<Cargo> lstCargo = crca.mostrarCargo();
                                                                    for(Cargo ca:lstCargo){
                                                                %>
                                                                <option value="<%=ca.getIdCargo()%>"><%=ca.getNombreCargo()%></option>
                                                                <%}%>
                                                            </select>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="form-group">
                                            <label for="nivelexperiencia" class="cols-sm-2 control-label">Nivel Experiencia</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-hourglass-2" aria-hidden="true"></i></span>
                                                            <select name="cmbNivelExperiencia" id="cmbNivelExperiencia" class="form-control" >
                                                                <option value="0">.:Seleccione un Nivel:.</option>
                                                                <%
                                                                    List<NivelExperiencia> lstNivExp = crne.mostrarNivelExperiencia();
                                                                    for(NivelExperiencia nivexp:lstNivExp){
                                                                %>
                                                                <option value="<%=nivexp.getIdNivelExperiencia()%>"><%=nivexp.getNombreNivelExperiencia()%></option>
                                                                <%}%>
                                                            </select>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="form-group">
                                            <label for="tipocontratacion" class="cols-sm-2 control-label">Tipo Contratación</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-navicon" aria-hidden="true"></i></span>
                                                            <select name="cmbTipoContratacion" id="cmbTipoContratacion" class="form-control" >
                                                                <option value="0">.:Seleccione un Tipo:.</option>
                                                                <%
                                                                    List<TipoContratacion> lstTiCon = crtc.mostrarTipoContratacion();
                                                                    for(TipoContratacion ticon:lstTiCon){
                                                                %>
                                                                <option value="<%=ticon.getIdTipoContratacion()%>"><%=ticon.getNombreContratacion()%></option>
                                                                <%}%>
                                                            </select>
                                                    </div>
                                            </div>
                                    </div>
                                    <div class="form-group">
                                    <label for="departamento" class="cols-sm-2 control-label">Departamento</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="fa fa-map" aria-hidden="true"></i></span>
                                                <select name="cmbDepartamento" id="cmbDepartamento" class="form-control" >
                                                    <option value="0">.:Seleccione un Departamento:.</option>
                                                    <%
                                                        List<Departamento> lstDepto = crucand.listaDepto();
                                                        for(Departamento depto:lstDepto){
                                                    %>
                                                    <option value="<%=depto.getIdDepto()%>"><%=depto.getNombreDepto()%></option>
                                                    <%}%>
                                                </select>
                                        </div>
                                    </div>
                                    </div>
                                    <div class="form-group">
                                    <label for="empresa" class="cols-sm-2 control-label">Empresa</label>
                                        <div class="cols-sm-10">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-home" aria-hidden="true"></i></span>
                                                <select name="cmbEmpresa" id="cmbEmpresa" class="form-control" >
                                                    <option value="0">.:Empresa:.</option>
                                                    <%
                                                        List<Empresa> lstEmpre = crempre.mostrarEmpresa();
                                                        for(Empresa empre:lstEmpre){
                                                    %>
                                                    <option value="<%=empre.getIdEmpresa()%>"><%=empre.getNombreEmpresa()%></option>
                                                    <%}%>
                                                </select>
                                        </div>
                                    </div>
                                    </div>

                                    <div class="form-group">
                                            <label for="titulooferta" class="cols-sm-2 control-label">Título Oferta</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-paperclip" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control" name="txtNombreOferta" id="txtNombreOferta"  placeholder="Título Oferta"/>
                                                    </div>
                                            </div>
                                    </div>
                                    
                                    <div class="form-group">
                                            <label for="vacantes" class="cols-sm-2 control-label">Vacantes</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-group" aria-hidden="true"></i></span>
                                                            <input type="number" class="form-control" name="txtVacantes" id="txtVacantes"  placeholder="Número de vacantes" min="1" max="99"/>
                                                    </div>
                                            </div>
                                    </div>
                                    
                                    <div class="form-group">
                                            <label for="descripcion" class="cols-sm-2 control-label">Descripción</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-file" aria-hidden="true"></i></span>
                                                            <textarea class="form-control" rows="2" name="txtDescripcion" id="txtDescripcion" placeholder="Descripción"></textarea>
                                                    </div>
                                            </div>
                                    </div>
                                    
                                    <div class="form-group">
                                            <label for="edadmin" class="cols-sm-2 control-label">Edad mínima</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-street-view" aria-hidden="true"></i></span>
                                                            <input type="number" class="form-control" name="txtEdadMin" id="txtEdadMin"  placeholder="Edad mínima" min="1" max="99"/>
                                                    </div>
                                            </div>
                                    </div>
                                    <div class="form-group">
                                            <label for="edadmax" class="cols-sm-2 control-label">Edad máxima</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-street-view" aria-hidden="true"></i></span>
                                                            <input type="number" class="form-control" name="txtEdadMax" id="txtVacantes"  placeholder="Edad Máxima" min="1" max="99" />
                                                    </div>
                                            </div>
                                    </div>
                                    <div class="form-group ">
                                            <a href="http://deepak646.blogspot.in" target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">Register</a>
                                    </div>

                            </form>
                    </div>
            </div>
        </div>
        <jsp:include page="plantilla/footer.jsp"/> 
    </body>
</html>
