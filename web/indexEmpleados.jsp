<%@page import="Logica.Empleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <%
        session = request.getSession();
        String nombre = "";
        String apellido = "";
        int id = 0;
        if (session != null && session.getAttribute("emple")!=null ) {
            Empleado emp = (Empleado) session.getAttribute("emple");
            nombre = emp.getNombre();
            apellido = emp.getApellido();
            id = emp.getUsuario().getId();
        }
    %> 
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
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
        
        <title>Polo Park</title>
    </head>
    <body>

        <div class="d-flex" id="content-wrapper">
            <!-- Sidebar -->
            <div id="sidebar-container">
                <div class="logo">
                    <h2 class="text-light font-weight-bold mb-0 text-center">PoloPark</h2>
                </div>
                <div class="menu">
                    <a onClick="redirectSubMenu('./indexJuegos.jsp')" class="d-block text-light p-3 border-0"><i class="icon ion-md-apps lead mr-2"></i>Juegos</a>
                    <a onClick="redirectSubMenu('./indexUsuario.jsp')" class="d-block text-light p-3 border-0"><i class="icon ion-md-people lead mr-2"></i>Usuarios</a>
                    <a onClick="redirectSubMenu('./indexEntrada.jsp')" class="d-block text-light p-3 border-0"><i class="icon ion-md-stats lead mr-2"></i>Entradas</a>
                    <a onClick="redirectSubMenu('./empleados.jsp')" class="d-block text-light p-3 border-0"><i class="icon ion-md-person lead mr-2"></i>Empleados</a>
                    <a onClick="redirectSubMenu('./Configuracion.jsp')" class="d-block text-light p-3 border-0"> <i class="icon ion-md-settings lead mr-2"></i>
                        Configuración</a>
                </div>
            </div>
            <div class="w-100">
                <nav class="navbar navbar-expand-lg navbar-light  border-bottom nv">
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
                                        <%= nombre%> <%= apellido%>
                                    </a>

                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#">Mi perfil</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Cerrar sesión</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <div  class="bg-grey w-100">

                    
                    <!-- Section y Div que se actualizan para mostrar los datos-->
                    <section class="bg-light py-3" id="submenu">
                  
                    </section>


            </div>
        </div>


         <script src="./js/scripts.js"></script>
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
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
