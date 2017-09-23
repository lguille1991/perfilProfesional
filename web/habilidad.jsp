<%-- 
    /**
 * Nombre      : habilidad
 * Versión     : 2.0
 * Fecha       : 23/09/2017
 * CopyRight   : Programmer Group Services S.A de C.V
 * @author     : Alexis, Kevin, Luis, María José, Geofredo
 */
--%>
<%@page import="java.util.*"%>
<%@page import="com.tecontrato.modelo.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Versión compilada y comprimida del CSS de Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Tema opcional -->
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.min.css">
        <!-- Versión compilada y comprimida del JavaScript de Bootstrap y Jquery -->
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script Language='JavaScript'>
            function cargar(codigo, nombreh){
                document.frmHabilidad.idhabilidad.value = codigo;
                document.frmHabilidad.nombrehabilidad.value = nombreh;
            }
        </script>
        <% if(request.getAttribute("valor") != null){ %>
        <script>
               alert('<%= request.getAttribute("valor") %>');
        </script>
        <% }  %>
    </head>
    <body>
    <% CrudHabilidad cha = new CrudHabilidad(); %>
    <jsp:include page="menu.jsp" />
    <div class="container">
         <div class="col-md-3"></div>
            <div class="col-md-6 media well" >
                <form action="procesarHabilidad" method="" class="form-horizontal" name="frmHabilidad">
                <h3 class="text-center text-muted">HABILIDADES</h3>
                <div class="form-group">
                  <label class="control-label col-sm-2" >Código:</label>
                  <div class="col-sm-10">
                      <input type="text" class="form-control" name="idhabilidad" placeholder="Código" readonly="">
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-sm-2">Nombre:</label>
                  <div class="col-sm-10">          
                      <input type="text" class="form-control" name="nombrehabilidad" placeholder="Nombre" required="">
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
       <!--TABLA PARA MOSTRAR REGISTROS-->
        <div class="container">           
            <table class="table table-hover">
              <thead>
                <tr>
                  <th>Código</th>
                  <th>Habilidad</th>
                  <th>Acción</th>
                </tr>
              </thead>
              <tbody>
                <%
                  List<Habilidad> ls = cha.listahabilidades();
                  for( Habilidad h:ls){
                %>
                <tr>
                    <td><%= h.getIdHabilidad() %> </td>
                    <td><%= h.getNombreHabilidad() %></td>
                    <td><a href="javascript:cargar(<%= h.getIdHabilidad()%>,'<%=h.getNombreHabilidad() %>')">Seleccionar</a></td>
                </tr>
                <% } %>
              </tbody>
            </table>
        </div>
    </body>
</html>
