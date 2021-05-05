<%@page import="Persistencia.ControladoraParque"%>
<!DOCTYPE html>
<html>
    <head>
        
        <jsp:include page="Template/head.jsp" />  
        <title>Parque</title>
    </head>
    <body>
        <div class="align-items-center">
            <h1 class="text-center">Polo Park  </h1>    
        </div>


        <form class="container col-lg-3" action="ServletLogin" method="POST">
            <div class="mx-auto d-block">
                <img src="./Iconos/parque.png" width="50" height="50" >    
            </div>

            <div class="mb-3">
                <label  class="form-label">Usuario</label>
                <input type="text" class="form-control" name="user">
            </div>
            <div class="mb-3">
                <label  class="form-label">Contraseña</label>
                <input type="password" class="form-control" name="pass">
            </div>
            <button type="submit" class="btn btn-info">Iniciar Session</button>  
            
            <a class="btn btn-success" href="createEmployed.jsp">Crear usuario</a>
        </form>

        
        
        <jsp:include page="Template/scripts.jsp" />  
    </body>
</html>
