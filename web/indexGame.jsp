<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <jsp:include page="Template/head.jsp" /> 
        <title>Games</title>
    </head>
    <body>
        <div>
            <jsp:include page="navbar.jsp"/>
            <jsp:include page="sidebar.jsp"/>  
            <div class="container text-center backgorund-Trans shadow p-3 shadow-lg p-3 mb-5 bg-white rounded" id="menuGame">
                <h2 class="text-center">Juegos</h2>
                <div class="container mx-auto text-center contenedorBotones">
                    <button  id="btn-listar" type="button" class="btn btn-success">Listar Juegos</button>
                    <button  id="btn-create-game" type="button" class="btn btn-success">Nuevo Juego</button>
                </div>
                <div class="container mx-auto" id="content-tablas"></div>
            </div>
        </div>
        <script src="js/scriptsGame.js"></script>
        
    </body>
</html>
