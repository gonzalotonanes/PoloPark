<%@page import="Persistencia.ControladoraParque"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
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
            <input class="btn btn-success" type="button" value="Crear Usuario" name="btn_crear_usuario" 
            onclick="AbrirFormReg('registroEmp.jsp')" />
        </form>

        <script src="./js/scripts.js">
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    </body>
</html>
