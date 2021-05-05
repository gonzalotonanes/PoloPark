<%@page import="Persistencia.ControllerTicket"%>
<%@page import="Logica.Entrada"%>
<%@page import="java.util.List"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <%
        ControllerTicket control = new ControllerTicket();
        List<Entrada> entradas = control.findTicket();
        pageContext.setAttribute("e", entradas);
    %>
   
    <body>
        <div id="editar">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th scope="col">Codigo</th>
                        <th scope="col">Fecha</th>
                        <th scope="col">Opcion</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="tempEnt" items="${e}">
                        <tr>
                            <td>${tempEnt.getCodigo()}</td>
                            <td>${tempEnt.getFecha()}</td>
                            <td>
                                <button onclick="editTicket(${tempEnt.getCodigo()})" type="button" class="btn btn-success">Editar</button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
