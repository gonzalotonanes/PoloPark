<%@page import="Persistencia.ControllerGame"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Persistencia.ControladoraParque"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Juego"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%
    List<Juego> juegos = new ArrayList<>();
    ControllerGame ctrlGame = new ControllerGame();
    juegos = ctrlGame.findGames();
    pageContext.setAttribute("juegos", juegos);
%>
<html>
    <body>
        <div class="container col-lg-6">
            <form class="row g-3" action="ServletEntrada" method="POST" id="form-ticket">
                <div class="col-6">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombres">
                </div>
                <div class="col-6">
                    <label for="apellido" class="form-label">Apellido</label>
                    <input type="text" class="form-control" name="apellido" id="apellido" placeholder="Apellidos">
                </div>
                <div class="col-md-4">
                    <label for="dni" class="form-label">DNI</label>
                    <input type="number" class="form-control" name="dni" id="dni" placeholder="DNI">
                </div>    
                <div class="col-md-5">
                    <label for="fecha" class="form-label">Fecha Entrada</label>
                    <input type="date" class="form-control" name="fecha" id="fecha" >

                </div>
                <div class="col-md-3">
                    <label for="hora" class="form-label">Hora</label>
                    <input type="time" class="form-control" name="hora" id="hora" >
                </div>
                <div class="col-md-5">
                    <label for="juego" class="form-label">Juegos</label>

                    <select id="juego" name="juego" class="form-control" required> 
                        <option value="" >Seleccione</option>
                        <c:forEach var="game" items="${juegos}">
                            <option value=${game.getCod()}>  ${game.getNombre()}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-12 ">
                    <button type="submit" id="btn-enviar" class="btn btn-primary mx-auto d-block text-center">Vender</button>
                </div>
            </form>
        </div>
        <script src="js/scriptsTickets.js"></script>        
    </body>
</html>
