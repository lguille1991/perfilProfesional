<%-- 
    Document   : idioma
    Created on : 10-09-2017, 06:25:39 PM
    Author     : Geofredo
--%>

<%@page import="com.tecontrato.modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="plantilla/libs.jsp"/>
        
        <title>Cargo</title>
    </head>
    <body class="bodyFormulario" id="home">
         <div class="container-fluid">

            <jsp:include page="plantilla/menu.jsp" />
            <div class="row main">

                <div class="main-login main-center">
                    <h3><strong>CARGO</strong></h3>
                    <form class="" method="post" action="procesarCargo">

                        <label for="codigo" class="cols-sm-2 control-label">C&oacute;digo</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true" ></i></span>
                                <input type="text" class="form-control" name="txtCodigo" id="txtCodigo"  placeholder="Código" readonly="" />
                            </div>
                        </div>

                        <br>
                        <div class="form-group">
                            <label for="name" class="cols-sm-2 control-label">Cargo</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-file" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="txtNombreCargo" id="txtNombreCargo"  placeholder="Ingrese el cargo"/>
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

            <jsp:include page="plantilla/footer.jsp"/> 
    </body>
</html>
