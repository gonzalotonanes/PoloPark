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
    <body>
        <div id="sidebar-container" class="bg-info shadow-lg p-3 mb-5 rounded" >
                <div class="menu">
                    <a href="./indexGame.jsp" class="d-block text-light p-3 border-0"><i class="icon ion-md-apps lead mr-2"></i>Juegos</a>
                    <a href="./indexUser.jsp" class="d-block text-light p-3 border-0"><i class="icon ion-md-people lead mr-2"></i>Usuarios</a>
                    <a href="./indexTickets.jsp" class="d-block text-light p-3 border-0"><i class="icon ion-md-stats lead mr-2"></i>Entradas</a>
                    <a href="./indexEmployees.jsp" class="d-block text-light p-3 border-0"><i class="icon ion-md-person lead mr-2"></i>Empleados</a>
                    <a href="./indexConfig.jsp" class="d-block text-light p-3 border-0"> <i class="icon ion-md-settings lead mr-2"></i>
                        Configuración</a>
                </div>
            </div>
    </body>
</html>
