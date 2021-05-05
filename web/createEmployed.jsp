<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="Template/head.jsp" />  
    </head>
    <body>
        <h1 class="text-center">Registro Empleado</h1>
        <div class="container col-lg-6">
            <form class="row g-3" action="ServletRegEmp" method="POST">
            <div class="col-md-3">
                <label  class="form-label">Usuario</label>
                <input type="text" class="form-control" name="usuario" placeholder="Usuario">
            </div>
            <div class="col-md-3">
                <label for="inputPassword4" class="form-label">Contraseña</label>
                <input type="password" class="form-control" name="password" placeholder="Contraseña">
            </div>
            <div class="col-6">
                <label for="inputAddress" class="form-label">Nombre</label>
                <input type="text" class="form-control" name="nombre" placeholder="Nombres">
            </div>
            <div class="col-6">
                <label for="inputAddress2" class="form-label">Apellido</label>
                <input type="text" class="form-control" name="apellido" placeholder="Apellidos">
            </div>
            <div class="col-md-6">
                <label for="inputCity" class="form-label">DNI</label>
                <input type="number" class="form-control" name="dni" placeholder="DNI">
            </div>    
            <div class="col-md-6">
                <label for="inputCity" class="form-label">Direccion</label>
                <input type="text" class="form-control" name="direccion" placeholder="Dirección">
            </div>
            
            <div class="col-md-3">
                <label for="inputZip" class="form-label">Fecha nacimiento</label>
                <input type="date" class="form-control" name="fecha" >
            </div>
           <div class="col-md-3">
                <label for="inputZip" class="form-label">Telefono</label>
                <input type="number" class="form-control" name="tel" >
            </div>
            <div class="col-12">
                <button type="submit" class="btn btn-primary mx-auto d-block">Registrar</button>
            </div>
        </form>
        </div>
    </body>
</html>
