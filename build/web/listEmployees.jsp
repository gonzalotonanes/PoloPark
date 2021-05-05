<%@page import="Persistencia.ControllerEmployed"%>
<%@page import="Logica.Empleado"%>
<%@page import="java.util.List"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <%
        ControllerEmployed ctrlEmp = new ControllerEmployed();
        List<Empleado> empleados = ctrlEmp.findEmployees();
        pageContext.setAttribute("employees", empleados);
    %>
    <body>
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
                    <c:forEach var="emp" items="${employees}">
                        <tr>
                            <td>${emp.getNombre()}</td>
                            <td>${emp.getApellido()}</td>
                            <td>${emp.getDni()}</td>
                            <td><button onclick="editEmployed(${emp.getDni()})" class="btn btn-success">Editar</button></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        
        <script src="js/scriptsEmployees.js"></script>
    </body>
</html>
