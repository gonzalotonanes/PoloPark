<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Configuracion</title>
    </head>
    <body>
        <div id="content" class="w-100">
            <section class="bg-light py-3">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9 col-md-8">
                            <!-- ACA IRIA EL TITULO DEL JSP CORRESPONDIENTE-->
                            <h2 class="text-center">Configuración</h2>
                            <div class="container align-items-center text-center contenedorBotones">
                                <button onclick="tablasForm('./NuevoHorario.jsp')" type="button" class="btn btn-success">Agregar horario</button>
                                <button onclick="tablasForm('./listarHorarios.jsp')" type="button" class="btn btn-success">Listar horarios</button>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
            <div class="container" id="info">

            </div>
        </div>

        <script src="./js/scripts.js"></script>
    </body>
</html>
