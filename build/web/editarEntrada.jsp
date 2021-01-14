<%@page import="java.util.List"%>
<%@page import="Logica.Juego"%>
<%@page import="Utilidades.Fecha"%>
<%@page import="java.util.Date"%>
<%@page import="Persistencia.ControladoraParque"%>
<%@page import="Logica.Entrada"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        session = request.getSession();
        String cod = (String) request.getParameter("prueba");

        ControladoraParque control = new ControladoraParque();
        List<Juego> juegos = control.obtenerJuegos();
        int numero = Integer.parseInt(cod);
        Entrada entrada = control.obtenerEntrada(numero);
        Date fecha = entrada.getFecha();
        String hora = entrada.getHora();
        String nombre = entrada.getCliente().getNombre();
        String apellido = entrada.getCliente().getApellido();
        int dni = entrada.getCliente().getDni();
        Juego juego = entrada.getJuego();
        String f = Fecha.DateAString(fecha);
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
        <h1>Editar Entrada </h1>
        <div class="container">
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Codigo: <%=cod%> </li>
                <li class="list-group-item">Fecha: <%=fecha%></li>
                <li class="list-group-item">Hora: <%=hora%></li>
                <li class="list-group-item">Nombre: <%=nombre%></li>
                <li class="list-group-item">Apellido: <%=apellido%></li>
                <li class="list-group-item">DNI: <%=dni%></li>
                <li class="list-group-item">Juego: <%= juego.getNombre()%></li>
            </ul>
        </div>
        <form action="ServletEditEntrada" method="POST">
            <div class="form-row">
                <div class="form-group col-md-2">
                    <label for="inputPassword4">Fecha:</label>
                    <input type="date" class="form-control" name="fecha" >
                </div>
                <div class="form-group col-md-1">
                    <label for="inputAddress">Hora:</label>
                    <input type="time" class="form-control" name="hora">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputAddress2">Nombre</label>
                    <input type="text" class="form-control" name="nombre" placeholder="Ingrese su nombre">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputAddress2">Apellido</label>
                    <input type="text" class="form-control" name="apellido" placeholder="Ingrese su apellido">
                </div>
                <div class="form-group col-md-3">
                    <label for="inputAddress2">DNI</label>
                    <input type="number" class="form-control" name="dni" placeholder="Ingrese el nuevo dni">
                </div>
            </div>
            <div class="form-row">

                <div class="form-group col-md-4">
                    <label for="inputState">Juegos</label>
                    <select name="juego" class="form-control">
                        <option selected>Choose...</option>
                        <%
                            for (Juego elem : juegos) {
                        %><option> <%=elem.getNombre()%></option><%
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

        <script src="./js/scripts.js"></script>
    </body>
</html>
