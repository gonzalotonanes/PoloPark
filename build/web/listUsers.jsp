<%@page import="java.util.List"%>
<%@page import="Logica.Usuario"%>
<%@page import="Persistencia.ControladoraParque"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <%
        ControladoraParque control = new ControladoraParque();
        List<Usuario> usuarios = control.obtenerUsuarios();
        pageContext.setAttribute("usuarios", usuarios);
    %>
    <head>
        <jsp:include page="Template/head.jsp" /> 
    </head>
    <body>
        <div class="container" id="editarJuego">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Usuario</th>
                        <th scope="col">Pass</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="userTemp" items="${usuarios}">
                        <tr>
                            <td>${userTemp.getId()}</td>
                            <td>${userTemp.getUsuario()}</td>
                            <td>${userTemp.getPassword()}</td>
                            <td><button onclick="editUser(${userTemp.getId()})" id="boton"type="button" class="btn btn-success">Editar</button></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
