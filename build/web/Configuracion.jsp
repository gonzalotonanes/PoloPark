<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Configuracion</title>
    </head>
    <body>
        <div class="d-flex" id="content-wrapper">
            <jsp:include page="./sidebar.jsp"></jsp:include>
            <div class="w-100">
                 <jsp:include page="./header.jsp"></jsp:include>
                 <section class="bg-light py-3">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-9 col-md-8">
                                <!-- ACA IRIA EL TITULO DEL JSP CORRESPONDIENTE-->
                                <h2 class="text-center">Configuración</h2>
                                <div class="container align-items-center text-center contenedorBotones">
                                            <button onclick="jspNuevoHorario()" type="button" class="btn btn-success">Agregar horario</button>
                                            <button onclick="jspListarHorarios()" type="button" class="btn btn-success">Listar horarios</button>
                                        </div>
                            </div>

                        </div>
                    </div>
                </section>
                 <div class="container" id="info">
                     
                 </div>
            </div>
        </div>
                 
                 <script src="./js/scripts.js"></script>
    </body>
</html>
