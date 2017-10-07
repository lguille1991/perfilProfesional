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
        <div class="container-fluid contFormulario">
            <jsp:include page="plantilla/menu.jsp" />
        </div>
        <div class="container">
                <form action="procesarEmpresa" method="POST">
                    <div class="form-group">
                        <div class="col-md-4 boxLeft"></div>
                        <div class="col-md-4 boxLogin boxCenter">
                            <h2>Empresa</h2>
                            <input type="text" class="form-control" id="txtCodigo" name="txtCodigo" readonly="true" placeholder="Código"/>
                            <input type="text" class="form-control" id="txtActividad" name="txtActividad" placeholder="Actividad"/>
                            <textarea class="form-control" rows="2" name="txtDescripcion" id="txtDescripcion" placeholder="Descripción"></textarea>
                            <input type="email" class="form-control" id="txtEmail" name="txtEmail" placeholder="Email"/>
                            <input type="text" class="form-control phone" id="txtTelefono" name="txtTelefono" placeholder="Teléfono"/>
                            <input type="text" class="form-control" id="txtNombre" name="txtNombre" placeholder="Nombre"/>
                            <div class="botones "id="botones">
                                <button type="submit" class="btn btn-success" name="btnGuardar">
                                    <span class="glyphicon glyphicon-floppy-saved"></span> Guardar
                                </button>
                                <button type="reset" class="btn btn-primary">
                                    <span class="glyphicon glyphicon-share-alt"></span> Cancelar
                                </button>
                            </div>
                        </div>
                        <div class="col-md-4 boxRight"></div>
                    </div>
                </form>
            </div>
        </div>      
        <jsp:include page="plantilla/footer.jsp"/> 
    </body>
</html>
