
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <title>Usuarios</title>
    </head>
    <body>
        
        <div class="d-flex" id="content-wrapper">
        <jsp:include page="./sidebar.jsp"></jsp:include>
            <div class="w-100">
            <jsp:include page="./header.jsp"></jsp:include>
            <div id="content" class="bg-grey w-100">

                <section class="bg-light py-3">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-9 col-md-8">
                                <!-- ACA IRIA EL TITULO DEL JSP CORRESPONDIENTE-->
                                <h2 class="text-center">Usuario</h2>
                                <div class="container align-items-center text-center contenedorBotones">
                                        <button onclick="ejecutarAjax()" type="button" class="btn btn-success">Listar Usuario</button>
                                        
                                    </div>
                            </div>

                        </div>
                    </div>
                </section>
                 <div class="container " id="info"></div>
    
        </div>

    </div>
            
            <script type="text/javascript">

            //0 Peticion no ha sido aprobada
            //1 Peticion ha sido establecida
            //2 Peticion ha sio enviada
            //3 Peticion esta siendo establecida
            //4 Peticion ha sido finalizada
            function ejecutarAjax() {

                var ajaxRequest = new XMLHttpRequest();
                ajaxRequest.onreadystatechange = function () {


                    if (ajaxRequest.readyState == 4 && ajaxRequest.status == 200) {
                        document.getElementById("info").innerHTML = ajaxRequest.responseText;
                    }
                }

                ajaxRequest.open("GET", "./listarUsuarios.jsp", true);
                ajaxRequest.send();
            }
            </script>
        
        
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
