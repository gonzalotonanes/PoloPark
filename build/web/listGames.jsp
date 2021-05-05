<%@page import="Persistencia.ControllerGame"%>
<%@page import="Logica.Horario"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Juego"%>
<%@page import="Persistencia.ControladoraParque"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    ControllerGame crtlGame= new ControllerGame();
    List<Juego> juegos = crtlGame.findGames();
    pageContext.setAttribute("juegos", juegos);
%>
<html>

    <body>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Codigo</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Capacidad</th>
                    <th scope="col">Horario desde</th>
                    <th scope="col">Horario hasta</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="tempGame" items="${juegos}">
                    <tr>
                        <td>${tempGame.getCod()}</td>   
                        <td>${tempGame.getNombre()}</td>
                        <td>${tempGame.getCapacidad()}</td>
                        <td>${tempGame.getHorario().getHoraDesde()}</td>
                        <td>${tempGame.getHorario().getHoraHasta()}</td>
                        <td><button onclick="editGame(${tempGame.getCod()})" type="button" class="btn btn-success"> Editar</button></td>
                    <tr>
                    </c:forEach> 
            </tbody>
        </table>
    </body>
</html>