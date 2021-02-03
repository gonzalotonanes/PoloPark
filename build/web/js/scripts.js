function AbrirFormReg(URL)
{
    window.location.href = URL;
}


function tablasForm(tabla) {
    var ajaxRequest = new XMLHttpRequest();
    alert(tabla)
    ajaxRequest.onreadystatechange = function () {


        if (ajaxRequest.readyState == 4 && ajaxRequest.status == 200) {
            document.getElementById("info").innerHTML = ajaxRequest.responseText;
        }
    }

    ajaxRequest.open("GET", tabla, true);
    ajaxRequest.send();
}   

function redirectSubMenu(URL){
    
    var ajaxRequest = new XMLHttpRequest();
    ajaxRequest.onreadystatechange = function () {


        if (ajaxRequest.readyState == 4 && ajaxRequest.status == 200) {
            document.getElementById("submenu").innerHTML = ajaxRequest.responseText;
        }
    }

    ajaxRequest.open("GET", URL, true);
    ajaxRequest.send();
    
}

