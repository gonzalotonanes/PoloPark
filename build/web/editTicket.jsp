<%@page import="Persistencia.ControllerTicket"%>
<%@page import="Persistencia.ControllerGame"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Juego"%>
<%@page import="Utilidades.Fecha"%>
<%@page import="java.util.Date"%>
<%@page import="Logica.Entrada"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <%
        int cod = Integer.parseInt(request.getParameter("codigo"));
        ControllerTicket ctrlTicket = new ControllerTicket();
        ControllerGame ctrlGame= new ControllerGame();
        List<Juego> juegos = ctrlGame.findGames();
        Entrada e = ctrlTicket.findTicket(cod);
        String f = Fecha.DateAString(e.getFecha());
        
        pageContext.setAttribute("fecha", f);
        pageContext.setAttribute("e", e);
        pageContext.setAttribute("juegos", juegos);
    %>
    <body>
        <h1>Editar Entrada </h1>
        <div class="container">
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Codigo: ${e.getCodigo()} </li>
                <li class="list-group-item">Fecha: ${fecha}</li>
                <li class="list-group-item">Hora: ${e.getHora()}</li>
                <li class="list-group-item">Nombre: ${e.getCliente().getNombre()}</li>
                <li class="list-group-item">Apellido: ${e.getCliente().getApellido()}</li>
                <li class="list-group-item">DNI: ${e.getCliente().getDni()}</li>
                <li class="list-group-item">Juego: ${e.getJuego().getNombre()} </li>
            </ul>
        </div>
        <form action="ServletEditTicket" method="POST" id="form-ticket" class="scroll">
            <div class="row">
                <div class="form-group col-md-3">
                    <label for="nombre">Nombre</label>
                    <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Ingrese su nombre">
                </div>
                <div class="form-group col-md-3">
                    <label for="apellido">Apellido</label>
                    <input type="text" class="form-control" name="apellido" id="apellido" placeholder="Ingrese su apellido">
                </div>
                <div class="form-group col-md-3">
                    <label for="dni">DNI</label>
                    <input type="number" class="form-control" name="dni" id="dni" placeholder="Ingrese el nuevo dni">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-2">
                    <label for="hora" class="form-label">Hora</label>
                    <input type="time" class="form-control" name="hora" id="hora">
                </div>
                <div class="form-group col-md-3">
                    <label for="fecha">Fecha:</label>
                    <input type="date" class="form-control" name="fecha" id="fecha" >
                </div>
                <div class="form-group col-md-3">
                    <label for="inputState">Juegos</label>
                    <select name="juego" class="form-control">
                        <option value="">Seleccione</option>
                        <c:forEach var="tempGame" items="${juegos}"> 
                            <option value=${tempGame.getCod()}> ${tempGame.getNombre()} </option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <input type="hidden" name="codigo" value=<%=cod%> >
            <button type="submit" id="btn-edit-ticket-enviar" class="btn btn-primary">Enviar</button>
        </form>
        <script src="js/scriptsTickets.js"></script>        
    </body>
</html>
