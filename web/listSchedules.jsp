<%@page import="Persistencia.ControllerSchedule"%>
<%@page import="Logica.Horario"%>
<%@page import="java.util.List"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <%
        ControllerSchedule ctrlSche= new ControllerSchedule();
        List<Horario> horarios= ctrlSche.findSchedules();
        pageContext.setAttribute("schedules", horarios);
    %>
    <head>
    </head>
    <body>
        <div  class="container">
            <table class="table table-striped table-hover">

                <thead>
                    <tr>
                        <th scope="col">Codigo</th>
                        <th scope="col">Desde</th>
                        <th scope="col">Hasta</th>
                        <th scope="col">Opcion</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="temp" items="${schedules}">
                        <tr>
                        <td>${temp.getId()}</td>
                        <td>${temp.getHoraDesde()}</td>
                        <td>${temp.getHoraHasta()}</td>
                        <td><button onclick="editSchedule(${temp.getId()})" type="button" class="btn btn-success">Editar</button>
                        </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
