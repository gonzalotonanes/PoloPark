<%@page import="Persistencia.ControllerSchedule"%>
<%@page import="Persistencia.ControllerGame"%>
<%@page import="Logica.Horario"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Juego"%>
<%@page import="Persistencia.ControladoraParque"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <%
        String cod = (String) request.getParameter("codigo");
        ControllerGame ctrlGame= new ControllerGame();
        ControllerSchedule ctrlS= new ControllerSchedule();
        Juego juego = ctrlGame.findGame(Integer.parseInt(cod));
        List<Horario> horarios = ctrlS.findSchedules();
        
        pageContext.setAttribute("horarios", horarios);
        pageContext.setAttribute("j", juego);
    %>
    <head>
        <jsp:include page="Template/head.jsp" /> 
    </head>
    <body>
        <h4>Editar Juego </h4>
        <div class="container">
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Codigo:  ${j.getCod()}</li>
                <li class="list-group-item">Nombre: ${j.getNombre()}</li>
                <li class="list-group-item">Capacidad: ${j.getCapacidad()}</li>
                <li class="list-group-item">Horario desde: ${j.getHorario().getHoraDesde()} a ${j.getHorario().getHoraHasta()}</li>
            </ul>
        </div>
        <form action="ServletEdiJuego" method="POST" id="formEditGame">
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="name">Nombre</label>
                    <input type="text" class="form-control" id="name" name="name" value="" placeholder="" >
                </div>
                <div class="form-group col-md-3">
                    <label for="capacidad">Capacidad</label>
                    <input type="number" class="form-control" name="capacidad" id="capacidad"  value="" placeholder="">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="horario">Horarios</label>
                    <select name="horario" class="form-control">
                        <c:forEach var="ScheTemp" items="${horarios}">
                            <option value=${ScheTemp.getId()}> ${ScheTemp.getHoraDesde()} a ${ScheTemp.getHoraHasta()}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <input type="hidden" name="codigo" value=${j.getCod()}> 
            <button type="submit" id="btn-enviar" class="btn btn-primary">Enviar</button>
        </form>
            <script src="js/scriptsGame.js"> </script>
    </body>
</html>
