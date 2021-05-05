<%@page import="Logica.Usuario"%>
<%@page import="Persistencia.ControladoraParque"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            ControladoraParque control = new ControladoraParque();
            Usuario user = control.obtenerUsuario(id);
        %>
        <h2>Edit User</h2>
        <div class="container">
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Codigo: <%=user.getId()%> </li>
                <li class="list-group-item">Nombre: <%=user.getUsuario()%></li>
            </ul>
        </div>
        <form action="ServletEditUser" method="POST" id="form-edit-user">
            <div class="form-row">
                <div class="form-group col-md-5">
                    <label for="password">Password</label>
                    <input type="hidden" name="id" value=<%=user.getId()%>>
                    <input type="password" class="form-control" name="password" id="password"   placeholder="ingrese su nueva contraseña" >
                </div>
            </div>
            <button type="submit" id="btn-edit-user-enviar" class="btn btn-primary">Enviar</button>
        </form>
        <script src="js/scriptsUser.js"></script>
    </body>
</html>
