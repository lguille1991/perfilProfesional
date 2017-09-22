<%-- 
    Document   : nivel
    Created on : 09-22-2017, 08:06:53 AM
    Author     : Maria Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Versión compilada y comprimida del CSS de Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Tema opcional -->
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- Versión compilada y comprimida del JavaScript de Bootstrap -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Habilidades</title>
    </head>
    <body>
    <jsp:include page="menu.jsp"/>
    <div class="container">
         <div class="col-md-3"></div>
            <div class="col-md-6 media well" >
                <form class="form-horizontal" action="procesarHabilidad" method="">
                <h3 class="text-center text-muted">HABILIDADES</h3>
                <div class="form-group">
                  <label class="control-label col-sm-2" >Código:</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" name="idhabilidad" placeholder="Código">
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2">Nombre:</label>
                  <div class="col-sm-10">          
                      <input type="text" class="form-control" name="nombrehabilidad" placeholder="Nombre" >
                  </div>
                </div>
                <div class="form-group">        
                  <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-primary" name="btnGuardar">Guardar</button>
                    <button type="submit" class="btn btn-primary" name="btnModificar">Modificar</button>
                    <button type="submit" class="btn btn-danger" name="btnEliminar">Eliminar</button>
                    <button type="reset" class="btn btn-primary" name="btnCancelar">Cancelar</button>
                  </div>
                </div>
            </form>
            </div>
         <div class="col-md-3"></div>
        </div>
    </body>
</html>
