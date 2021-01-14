
<%@page import="Logica.Empleado"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    session = request.getSession();
    if (session == null) {
        response.sendRedirect("index.jsp");
    }
%>

<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
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

        <title>JSP Page</title>
    </head>
    <body>
        <!-- Sidebar -->
        <div id="sidebar-container">
            <div class="logo">
                <h2 class="text-light font-weight-bold mb-0 text-center">PoloPark</h2>
            </div>
            <div class="menu">
                <a href="indexJuegos.jsp" class="d-block text-light p-3 border-0"><i class="icon ion-md-apps lead mr-2"></i>Juegos</a>

                <a href="indexUsuario.jsp" class="d-block text-light p-3 border-0"><i class="icon ion-md-people lead mr-2"></i>Usuarios</a>

                <a href="indexEntrada.jsp" class="d-block text-light p-3 border-0"><i class="icon ion-md-stats lead mr-2"></i>Entradas</a>
                <a href="indexEmpleados.jsp" class="d-block text-light p-3 border-0"><i class="icon ion-md-person lead mr-2"></i>Empleados</a>
                <a href="Configuracion.jsp" class="d-block text-light p-3 border-0"> <i class="icon ion-md-settings lead mr-2"></i>
                    Configuración</a>
            </div>
        </div>
        <!-- Fin sidebar -->


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
