<%-- 
    Document   : empresa
    Created on : 04-oct-2017, 21:44:18
    Author     : lguil
--%>

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
    <body class="bodyFormulario">
        <div class="container-fluid">
            <jsp:include page="plantilla/menu.jsp" />
            
                <div class="row">
                    <div class="modal fade" id="empresa" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="panel panel-primary">
                                <div class="panel-heading" id="panel-heading" >
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                    <h4 class="panel-title" id="contactLabel">TeContrato.com</h4>
                                </div>
                                 <!--Formulario-->
                                <form action="procesarUsuarioEmpresa" method="post" name="frmUsuarioEmpresa" >
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
                    <h2>Empresa</h2>
                            <form class="" method="post" action="#">

                                    <div class="form-group">
                                            <label for="name" class="cols-sm-2 control-label">Código</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control" name="txtCodigo" id="txtCodigo"  placeholder="Código"/>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="form-group">
                                            <label for="email" class="cols-sm-2 control-label">Actividad</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control" name="txtActividad" id="txtActividad"  placeholder="Ingrese la actividad de la empresa"/>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="form-group">
                                            <label for="username" class="cols-sm-2 control-label">Descripción</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-file" aria-hidden="true"></i></span>
                                                            <textarea class="form-control" rows="2" name="txtDescripcion" id="txtDescripcion" placeholder="Descripción"></textarea>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="form-group">
                                            <label for="password" class="cols-sm-2 control-label">Email</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i></span>
                                                            <input type="email" class="form-control" name="txtEmail" id="txtEmail"  placeholder="Ingrese el correo electronico"/>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="form-group">
                                            <label for="confirm" class="cols-sm-2 control-label">Teléfono</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control" name="txtTelefono" id="txtTelefono"  placeholder="Ingrese el numero telefónico"/>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="form-group">
                                            <label for="confirm" class="cols-sm-2 control-label">Nombre</label>
                                            <div class="cols-sm-10">
                                                    <div class="input-group">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
                                                            <input type="text" class="form-control" name="txtNombre" id="txtNombre"  placeholder="Nombre de la empresa"/>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="form-group ">
                                            <a href="" data-toggle="modal" data-target="#empresa" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">Register</a>
                                    </div>

                            </form>
                    </div>
                </div>
        </div>      
        <jsp:include page="plantilla/footer.jsp"/> 
    </body>
</html>
