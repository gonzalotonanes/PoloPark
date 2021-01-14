
<%@page import="Logica.Horario"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Juego"%>
<%@page import="Persistencia.ControladoraParque"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <%
         session = request.getSession();
         String cod= (String)request.getParameter("prueba");
         ControladoraParque control= new ControladoraParque();
         Juego juego= control.obtenerJuego(Integer.parseInt(cod));
         String nombre= juego.getNombre();
         int cap= juego.getCapacidad();
         Horario h= juego.getHorario();
         
         List<Horario> horarios = control.obtenerHorarios();
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
        <h1>Editar Juego </h1>
        <div class="container">
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Codigo: <%=cod%> </li>
                <li class="list-group-item">Nombre: <%=nombre%></li>
                <li class="list-group-item">Capacidad: <%=cap%></li>
                <li class="list-group-item">Horario desde: <%=h.getHoraDesde()%> Horario hasta: <%= h.getHoraHasta()%></li>
            </ul>
        </div>
        
        <form action="ServletEdiJuego" method="POST">
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="inputAddress2">Nombre</label>
                    <input type="text" class="form-control" name="nombre" placeholder="Nombre juego">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputAddress2">Capacidad</label>
                    <input type="number" class="form-control" name="capacidad" placeholder="Capacidad Juego">
                </div>
            </div>
            <div class="form-row">

                <div class="form-group col-md-4">
                    <label for="inputState">Horarios</label>
                    <select name="horario" class="form-control">
                        <option selected>Choose...</option>
                        <%
                            for (Horario elem : horarios) {
                        %><option value=<%=elem.getId()%>> <%=elem.getHoraDesde()%> a <%=elem.getHoraHasta()%></option><%
                                    }
                        %>

                    </select>
                </div>

            </div>
            <input type="hidden" name="codigo" value=<%=cod%>>
            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
        
        
        
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"
        integrity="sha256-R4pqcOYV8lt7snxMQO/HSbVCFRPMdrhAFMH+vr9giYI=" crossorigin="anonymous"></script>
    </body>
</html>
