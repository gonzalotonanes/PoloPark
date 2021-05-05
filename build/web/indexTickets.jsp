<%@page import="Logica.Empleado"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="Template/head.jsp" /> 

        <title>Tickets</title>
    </head>
    <body>
        <div  >
            <jsp:include page="navbar.jsp"/>
            <jsp:include page="sidebar.jsp"/>  
            <div class="container text-center backgorund-Trans shadow p-3 shadow-lg p-3 mb-5 bg-white rounded scroll" id="menuGame">
                <h2 class="text-center">Entradas</h2>
                <div class="container align-items-center text-center contenedorBotones">
                    <button id="btn-create-ticket-menu" type="button" class="btn btn-success">Vender</button>
                    <button id="btn-list-ticket" type="button" class="btn btn-success">Listar</button>
                </div>
                <div class="container mx-auto" data-spy="scroll" id="content-tablas"></div>
            </div>
        </div>
        
            <script src="js/scriptsTickets.js"></script>
        <style>
            .scroll{
                 overflow: auto;
                 height: 100vh; 
            }
           
        </style>
        
        
    </body>
</html>
