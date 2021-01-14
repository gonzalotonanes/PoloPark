function AbrirFormReg(URL)
{
    window.location.href = URL;
}

function listarEmpleados() {

    var ajaxRequest = new XMLHttpRequest();
    ajaxRequest.onreadystatechange = function () {


        if (ajaxRequest.readyState == 4 && ajaxRequest.status == 200) {
            document.getElementById("info").innerHTML = ajaxRequest.responseText;
        }
    }

    ajaxRequest.open("GET", "./listarEmpleados.jsp", true);
    ajaxRequest.send();
}

function nuevoEmpleado() {
    var ajaxRequest = new XMLHttpRequest();
    ajaxRequest.onreadystatechange = function () {


        if (ajaxRequest.readyState == 4 && ajaxRequest.status == 200) {
            document.getElementById("info").innerHTML = ajaxRequest.responseText;
        }
    }

    ajaxRequest.open("GET", "./registroEmp.jsp", true);
    ajaxRequest.send();
}

function editarEntrada(entrada) {
    var ajaxRequest = new XMLHttpRequest();
    ajaxRequest.onreadystatechange = function () {


        if (ajaxRequest.readyState == 4 && ajaxRequest.status == 200) {
            document.getElementById("editar").innerHTML = ajaxRequest.responseText;
        }
    }

    ajaxRequest.open("GET", "./editarEntrada.jsp?prueba=" + entrada, true);
    ajaxRequest.send();
}

function jspNuevoHorario() {
    var ajaxRequest = new XMLHttpRequest();
    ajaxRequest.onreadystatechange = function () {


        if (ajaxRequest.readyState == 4 && ajaxRequest.status == 200) {
            document.getElementById("info").innerHTML = ajaxRequest.responseText;
        }
    }

    ajaxRequest.open("GET", "./NuevoHorario.jsp", true);
    ajaxRequest.send();
}

function jspListarHorarios() {

    var ajaxRequest = new XMLHttpRequest();
    ajaxRequest.onreadystatechange = function () {


        if (ajaxRequest.readyState == 4 && ajaxRequest.status == 200) {
            document.getElementById("info").innerHTML = ajaxRequest.responseText;
        }
    }

    ajaxRequest.open("GET", "./listarHorarios.jsp", true);
    ajaxRequest.send();
}
