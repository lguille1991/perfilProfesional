<%-- 
    Document   : ejemplo
    Created on : 04-oct-2017, 21:44:18
    Author     : mariajose
--%>

<%@page import="com.tecontrato.modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="plantilla/libs.jsp"/>
        <title>Ejemploooooo!</title>
        <script Language='JavaScript'>
          
          $(document).ready(function(){
              $('.phone').mask('(000)0000-0000');
          }); 
          
        </script>     
    </head>
    <body class="bodyFormulario" id="home">
        <div class="container-fluid">
            <jsp:include page="plantilla/menu.jsp" />
                <div class="row main">
                        <div class="main-login main-center">
                        <h3><strong>EJEMPLO</strong></h3>
                                <form class="" method="post" action="#">

                                        <div class="form-group">
                                                <label for="name" class="cols-sm-2 control-label">Codigo</label>
                                                <div class="cols-sm-10">
                                                        <div class="input-group">
                                                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                                                <input type="text" class="form-control" name="txtCodigo" id="txtCodigo"  placeholder="Codigo"/>
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
                                                <label for="username" class="cols-sm-2 control-label">Descripcion</label>
                                                <div class="cols-sm-10">
                                                        <div class="input-group">
                                                                <span class="input-group-addon"><i class="glyphicon glyphicon-file" aria-hidden="true"></i></span>
                                                                <textarea class="form-control" rows="2" name="txtDescripcion" id="txtDescripcion" placeholder="Descripción"  ></textarea>
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
                                                <label for="confirm" class="cols-sm-2 control-label">Telefono</label>
                                                <div class="cols-sm-10">
                                                        <div class="input-group">
                                                                <span class="input-group-addon"><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i></span>
                                                                <input type="text" class="form-control" name="txtTelefono" id="txtTelefono"  placeholder="Ingrese el numero telefonico"/>
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
                                                <label for="confirm" class="cols-sm-2 control-label">Categoría</label>
                                                <div class="cols-sm-10">
                                                        <div class="input-group"  id="select-dark">
                                                                <select id="dark" >
                                                                    <option>Seleccionar</option>
                                                                    <option>First Choice</option>
                                                                    <option>Second Choice</option>
                                                                    <option>Third Choice</option>
                                                                </select>
                                                        </div>
                                                </div>
                                        </div>
                                    <div class="form-group ">
                                                <label for="confirm" class="cols-sm-2 control-label">Género</label>
                                                <div class="cols-sm-10">
                                                    <div  class="input-group">
                                                                    <span class="input-group-addon"><i class="fa fa-venus-mars" aria-hidden="true"></i></span>
                                                                    <input type="radio" id="test1" name="radio-group" checked>
                                                                    <label for="test1">Apple</label>
                                                                    <input type="radio" id="test2" name="radio-group">
                                                                    <label for="test2">Peach</label>
                                           
                                                        </div>
                                                </div>
                                        </div><div class="form-group ">
                                                <label for="confirm" class="cols-sm-2 control-label">Archivo</label>
                                                <div class="cols-sm-10">    
                                                    <div class="input-group image-preview" style="text-align: right;" >
                                                    <!-- image-preview-filename -->
                                                    <input type="text" class="form-control image-preview-filename" disabled="" id="archivo">
                                                        <span class="input-group-btn">
                                                            <!-- image-preview-clear -->
                                                            <button type="button" class="btn btn-default image-preview-clear" style="display:none;height: 36px;">
                                                                <span class="glyphicon glyphicon-remove"></span>
                                                            </button>
                                                            <!-- image-preview-input -->
                                                            <div class="btn btn-default image-preview-input">
                                                                <span class="glyphicon glyphicon-folder-open"></span>
                                                                <span class="image-preview-input-title">Subir Foto</span>
                                                                <input type="file" accept="image/png, image/jpeg, image/gif"/>
                                                            </div>
                                                        </span> <!-- /input-group-btn -->
                                                    </div><!-- /input-group [image preview] --> 
                                                </div>
                                        </div>
                                        <div class="form-group ">
                                                <a href="" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">Guardar</a>
                                        </div>

                                </form>
                        </div>
                </div>
        </div>      
        <jsp:include page="plantilla/footer.jsp"/> 
    </body>
</html>
