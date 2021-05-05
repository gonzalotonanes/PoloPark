<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <jsp:include page="Template/head.jsp" /> 
        <title>Usuarios</title>
    </head>
    <body>
        <div>
            <jsp:include page="navbar.jsp"/>
            <jsp:include page="sidebar.jsp"/>  
            <div class="container text-center backgorund-Trans shadow p-3 shadow-lg p-3 mb-5 bg-white rounded" id="menuGame">
                <h2 class="text-center">Usuarios</h2>
                <div class="container align-items-center text-center contenedorBotones">
                    <button id="btn-list-user" type="button" class="btn btn-success">Listar Usuario</button>
                </div>

                <div class="container mx-auto" id="content-tablas"></div>
            </div>
        </div>
        <script src="js/scriptsUser.js"></script>
    </body>
</html>
