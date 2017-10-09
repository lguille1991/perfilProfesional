<%-- 
    Document   : usuarioCandidato
    Created on : 10-08-2017, 03:41:07 PM
    Author     : Kevin López
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="plantilla/libs.jsp"/>
        <title>Usuario</title>
        <script Language='JavaScript'>
          
          $(document).ready(function(){
              $('.phone').mask('(000)0000-0000');
          }); 
          
        </script>
        <title>Usuario Candidato</title>
    </head>
    <body id="home" class="bodyFormulario">
        <div class="container-fluid">
            <div class="row main">
                <div class="main-login main-center">
                    <h3><strong>USUARIO CANDIDATO</strong></h3>
                    <form class="" method="GET" action="procesarUsuario">
                            <div class="form-group">
                                    <label for="txtIdUsuario" class="cols-sm-2 control-label">Código</label>
                                    <div class="cols-sm-10">
                                            <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                    <input type="text" class="form-control" name="txtIdUsuario" id="txtIdUsuario"  placeholder="Código" readonly="true"/>
                                            </div>
                                    </div>
                            </div>

                            <div class="form-group">
                                    <label for="txtIdRol" class="cols-sm-2 control-label sr-only">Rol</label>
                                    <div class="cols-sm-10">
                                            <div class="input-group">
                                                <input type="hidden" class="form-control" name="txtIdRol" id="txtIdRol" value="3"/>
                                            </div>
                                    </div>
                            </div>

                            <div class="form-group">
                                    <label for="txtUsuario" class="cols-sm-2 control-label">Usuario</label>
                                    <div class="cols-sm-10">
                                            <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
                                                    <input type="text" class="form-control" name="txtUsuario" id="txtUsuario"  placeholder="Nombre de usuario"/>
                                            </div>
                                    </div>
                            </div>

                            <div class="form-group">
                                    <label for="txtClave1" class="cols-sm-2 control-label">Contraseña</label>
                                    <div class="cols-sm-10">
                                            <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
                                                    <input type="password" class="form-control" name="txtClave1" id="txtClave1"  placeholder="Ingrese su contraseña"/>
                                            </div>
                                    </div>
                            </div>

                            <div class="form-group">
                                    <label for="txtClave" class="cols-sm-2 control-label">Confirmar contraseña</label>
                                    <div class="cols-sm-10">
                                            <div class="input-group">
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
                                                    <input type="password" class="form-control" name="txtClave" id="txtClave"  placeholder="Confirme su contraseña"/>
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
    </body>
</html>