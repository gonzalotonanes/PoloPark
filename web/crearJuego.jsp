<%@page import="Logica.Horario"%>
<%@page import="java.util.List"%>
<%@page import="Persistencia.ControladoraParque"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <%
        ControladoraParque control= new ControladoraParque();
        List<Horario> horarios= control.obtenerHorarios();
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Required meta tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <!-- Styles -->
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- Google fonts -->
        <link href="https://fonts.googleapis.com/css?family=Muli:300,700&display=swap" rel="stylesheet">

        <!-- Ionic icons -->
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
    </head>
    <body>
        <h1 class="text-center">Registro Juego</h1>
        <div class="container col-lg-6">
            <form class="row g-3" action="ServletRegJuego" method="POST">
            <div class="col-md-3">
                <label  class="form-label">Nombre</label>
                <input type="text" class="form-control" name="nombre" placeholder="Usuario">
            </div>
            <div class="col-md-4">
                <label for="inputPassword4" class="form-label">Capacidad</label>
                <input type="number" class="form-control" name="capacidad" placeholder="Capacidad">
            </div>
            <div class="col-md-12">
                
                <div class="form-group col-6">
                    <label>Horarios</label>
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
            
            <div class="col-12">
                <button type="submit" class="btn btn-primary mx-auto d-block">Registrar</button>
            </div>
        </form>
            
        </div>
        
         <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
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
