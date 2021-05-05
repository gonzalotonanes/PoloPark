<%@page import="Persistencia.ControllerSchedule"%>
<%@page import="Logica.Horario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        ControllerSchedule ctrlSche = new ControllerSchedule();
        int id = Integer.parseInt(request.getParameter("id"));
        Horario schedule = ctrlSche.findSchedule(id);
        pageContext.setAttribute("s", schedule);
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h4>Edit Schedule </h4>
        <div class="container">
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Id:<%=schedule.getId()%> </li>
                <li class="list-group-item">Hora desde: <%=schedule.getHoraDesde()%> </li>
                <li class="list-group-item">Hora hasta: <%=schedule.getHoraHasta()%> </li>
            </ul>
        </div>
        <div class="container col-lg-6">
            <form class="row g-3" action="ServletEditSchedule" method="POST" id="form-schedule">
                <div class="col-md-3 ">
                    <label  for="hDesde" class="form-label">Desde</label>
                    <input type="time" class="form-control" name="hDesde" >
                </div>
                <div class="col-md-3">
                    <label for="hHasta" class="form-label">Hasta</label>
                    <input type="time" class="form-control" name="hHasta">
                </div>
                <input type="hidden" name="idSche" value=${s.getId()}> 
                <div class="col-12">
                    <button type="submit" class="btn btn-primary mx-auto d-block">Enviar</button>
                </div>
            </form>
        </div>
        <script src="js/scriptsSchedule.js"></script>
    </body>
</html>
