<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="Template/head.jsp" /> 
        <title>Configuracion</title>
    </head>
    <body>
        <div >
            <jsp:include page="navbar.jsp"/>
            <jsp:include page="sidebar.jsp"/>  
            <div class="container text-center backgorund-Trans shadow p-3 shadow-lg p-3 mb-5 bg-white rounded" id="menuGame">
                    <h2 class="text-center">Configurations</h2>
                    <div class="container align-items-center text-center contenedorBotones">
                        <button id="btn-new-schedule"  type="button" class="btn btn-success">Agregar horario</button>
                        <button id="btn-list-schedules"  type="button" class="btn btn-success">Listar horarios</button>
                    </div>
                <div class="container mx-auto" id="content-tablas"></div>
            </div>
        </div>
        <script src="./js/scriptsSchedule.js"></script>
        
    </body>
</html>
