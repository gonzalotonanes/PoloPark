<%@page import="Logica.Horario"%>
<%@page import="java.util.List"%>
<%@page import="Persistencia.ControladoraParque"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <%
        ControladoraParque control = new ControladoraParque();
        List<Horario> horarios = control.obtenerHorarios();
        pageContext.setAttribute("horarios",horarios );
    %>
    <head>
         <jsp:include page="Template/head.jsp" /> 
    </head>
    <body>
        <h1 class="text-center">Registro Juego</h1>
        <div class="container col-lg-6">
            <form  action="ServletRegJuego" method="POST" id="createGameForm">
                <div class="row">
                    <div class="col-md-5">
                        <label  for="nombre"class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Usuario">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <label for="capacidad" class="form-label">Capacidad</label>
                        <input type="number" class="form-control"  id="capacidad" name="capacidad" placeholder="Capacidad">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-4">
                        <label>Horarios</label>
                        <select name="horario" class="form-control">
                            <c:forEach var="hTemp" items="${horarios}">
                                <option value=${hTemp.getId()}> ${hTemp.getHoraDesde()} a ${hTemp.getHoraHasta()}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="col-12">
                    <button type="submit" id="btn-enviar" class="btn btn-primary mx-auto d-block">Registrar</button>
                </div>
            </form>
        </div>
        <script src="./js/scriptsGame.js"></script>
    </body>
</html>
