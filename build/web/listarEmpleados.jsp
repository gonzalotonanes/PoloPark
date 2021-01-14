
<%@page import="Logica.Empleado"%>
<%@page import="java.util.List"%>
<%@page session="true"%>
<%@page import="Persistencia.ControladoraParque"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Empleados</title>
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

    </head>
    <body>
        <!--ACA IRIA LA TABLA-->

        <div class="container">
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">DNI</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <%
                            ControladoraParque control = new ControladoraParque();
                            List<Empleado> empleados = control.ObtenerEmpleados();
                            for (Empleado emp : empleados) {
                        %>
                        <td><%=emp.getNombre()%></td>
                        <td><%=emp.getApellido()%></td>
                        <td><%=emp.getDni()%></td>

                    </tr>

                    <% }%>


                </tbody>
            </table>
        </div>


    </body>
</html>
