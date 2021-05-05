<%@page import="Logica.Empleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%
    session = request.getSession();
    Empleado emp = (Empleado) session.getAttribute("emple");
    pageContext.setAttribute("emp", emp);
   

%>
<html>
    <head>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light  bg-info">
            <div class="logo">
                <h2 class="text-light font-weight-bold mb-0 text-center">PoloPark</h2>
            </div>
            <div class="container">

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                        <li class="nav-item dropdown">
                            <a class="nav-link text-dark dropdown-toggle" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img src="assets/img/user-1.png" class="img-fluid rounded-circle avatar mr-2"
                                     />
                                ${emp.getNombre()} ${emp.getApellido()}
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Mi perfil</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="ServletLogin">Cerrar sesión</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
       
        <jsp:include page="Template/scripts.jsp" /> 
    </body>
</html>
