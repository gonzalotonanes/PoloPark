<%@page import="java.util.ArrayList"%>
<%@page import="Persistencia.ControladoraParque"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Juego"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    session = request.getSession();
    List<Juego> juegos = new ArrayList<>();
    if (session != null) {
        ControladoraParque control = new ControladoraParque();
        juegos = control.obtenerJuegos();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>
    <body>
        <div class="container col-lg-6">
            <form class="row g-3" action="ServletEntrada" method="POST">

                <div class="col-6">
                    <label for="inputAddress" class="form-label">Nombre</label>
                    <input type="text" class="form-control" name="nombre" placeholder="Nombres">
                </div>
                <div class="col-6">
                    <label for="inputAddress2" class="form-label">Apellido</label>
                    <input type="text" class="form-control" name="apellido" placeholder="Apellidos">
                </div>
                <div class="col-md-6">
                    <label for="inputCity" class="form-label">DNI</label>
                    <input type="number" class="form-control" name="dni" placeholder="DNI">
                </div>    
                <div class="col-md-4">
                    <label for="inputZip" class="form-label">Fecha Entrada</label>
                    <input type="date" class="form-control" name="fecha" >

                </div>
                <div class="col-md-3">
                    <label for="inputZip" class="form-label">Hora</label>
                    <input type="time" class="form-control" name="hora" >
                </div>
                <div class="col-md-5">
                    <label for="juego" class="form-label">Juegos</label>
                    <input list="juegos" name="juego" id="juego" class="form-control">
                    <%
                        if (juegos.size() != 0) {
                    %><datalist id="juegos"> <%
                        for (Juego elem : juegos) {

                        %><option value="<%=elem.getNombre()%>"><%

                                }

                            }
                            %>
                    </datalist>
                </div>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary mx-auto d-block">Enviar</button>
                </div>
            </form>

        </div>



    </div>
</body>
</html>
