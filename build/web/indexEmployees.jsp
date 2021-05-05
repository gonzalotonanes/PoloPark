<%@page import="Logica.Empleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <%
        String nombre = "";
        String apellido = "";
        int id = 0;
    %> 
    <head>
        <jsp:include page="Template/head.jsp" /> 

        <title>Employees</title>
    </head>
    <body>
        <jsp:include page="navbar.jsp"/>
        <jsp:include page="sidebar.jsp"/>  

        <div class="container text-center backgorund-Trans shadow p-3 shadow-lg p-3 mb-5 bg-white rounded" id="menuGame">
            <h2 class="text-center">Employees</h2>
            <div class="container align-items-center text-center contenedorBotones">
                <button id="btn-list-employees"  type="button" class="btn btn-success">Listar empleados</button>
            </div>
            <div class="container mx-auto" id="content-tablas"></div>
        </div>

        <script src="js/scriptsEmployees.js"></script>
    </body>
</html>
