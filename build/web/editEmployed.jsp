<%@page import="Logica.Empleado"%>
<%@page import="Persistencia.ControladoraParque"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        int dni = Integer.parseInt(request.getParameter("dni"));
        ControladoraParque control = new ControladoraParque();
    %>
    <head>
    </head>
    <body>
        <h4>Editar Employed </h4>
        <div class="container">
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Nombre  </li>
                <li class="list-group-item">Apellido </li>
                <li class="list-group-item">Dni </li>
            </ul>
        </div>
                 <form action="ServletEditEmployed" method="POST" id="form-edit-employed">
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="nombre">Nombre</label>
                    <input type="text" class="form-control" id="nombre" name="nombre"  placeholder="Nombre" >   
                </div>
                <div class="form-group col-md-3">
                    <label for="apellido">Apellido</label>
                    <input type="text" class="form-control" name="apellido" id="apellido"   placeholder="Apellido" >
                </div>
                 <div class="form-group col-md-3">
                    <label for="dni">DNI</label>
                    <input type="number" class="form-control" name="dni" id="dni"   placeholder="dni" >
                </div>
            </div>
           
            <input type="hidden" name="dni_original" value="" >
            <button type="submit" id="btn-enviar" class="btn btn-primary">Enviar</button>

        </form>
            
            <script src="js/scriptsEmployees.js"></script>
            <script>
        </script>
    </body>
</html>
