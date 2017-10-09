<%-- 
    Document   : empresa
    Created on : 04-oct-2017, 21:44:18
    Author     : lguil
--%>

<%@page import="java.util.List"%>
<%@page import="com.tecontrato.modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="plantilla/libs.jsp"/>
        <title>Empresa</title>
        <script Language='JavaScript'>
          
          $(document).ready(function(){
              $('.phone').mask('(000)0000-0000');
          }); 
          
        </script>
    </head>
    <body class="bodyFormulario" id="home">
        <div class="container-fluid">
            <jsp:include page="plantilla/menu.jsp"/>
            <%
                CrudEmpresa cemp = new CrudEmpresa();
            %>
                <div class="row main">
                    <div class="main-login main-center">
                            <h3><strong>EMPRESA</strong></h3>
                            <form class="" method="GET" action="procesarEmpresa">
                                    <div class="form-group">
                                            <label for="txtNombreEmpresa" class="cols-sm-2 control-label">Nombre</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control" name="txtNombreEmpresa" id="txtNombreEmpresa"  placeholder="Nombre de la empresa"/>
                                                    </div>
                                            </div>
                                    </div>
                                
                                    <div class="form-group">
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <input type="hidden" class="form-control" name="txtIdEmpresa" id="txtIdEmpresa"  placeholder="Código" readonly="true"/>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="form-group">
                                            <label for="txtActividad" class="cols-sm-2 control-label">Actividad</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control" name="txtActividad" id="txtActividad"  placeholder="Ingrese la actividad de la empresa"/>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="form-group">
                                            <label for="txtDescripcion" class="cols-sm-2 control-label">Descripción</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-file" aria-hidden="true"></i></span>
                                                            <textarea class="form-control" rows="2" name="txtDescripcion" id="txtDescripcion" placeholder="Descripción"></textarea>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="form-group">
                                            <label for="txtEmail" class="cols-sm-2 control-label">Email</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></span>
                                                            <input type="email" class="form-control" name="txtEmail" id="txtEmail"  placeholder="Ingrese el correo electronico"/>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="form-group">
                                            <label for="txtTelefono" class="cols-sm-2 control-label">Teléfono</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control phone" name="txtTelefono" id="txtTelefono"  placeholder="Ingrese el numero telefónico"/>
                                                    </div>
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
