$(document).ready(() => {

    $('#btn-list-employees').click(() => {


        $.ajax({
            url: "listEmployees.jsp",
            dataType: 'html',
            success: function (data) {
                $('#content-tablas').html(data);
            }
        });
    });

    $('#btn-new-employed').click(() => {

        $.ajax({
            url: "createEmployed.jsp",
            dataType: 'html',
            success: function (data) {
                $('#content-tablas').html(data);
            }
        });
    });

    $('#form-edit-employed').validate({

        rules: {
            nombre: {
                required: true,
                minlength: 3
            },
            apellido: {
                required: true,
                minlength: 3

            },
            dni: {
                required: true,
                number: true
            }
        },
        messages: {
            nombre: {
                required: "campo requerido",
                minlength: "3 char minimo"
            },
            apellido: {
                required: "campo requerido",
                minlength: "3 char minimo"

            },
            dni: {
                required: "campo requerido",
                number: "tiene que ser un numero"
            }
        }

    });


    $("#dni").keyup(function () {
        if ($(this).val() <= 0) {
            $("#btn-enviar").attr("disabled", true);
        } else {
            $("#btn-enviar").attr("disabled", false);
        }
    });


});

function editEmployed(dni) {
    $.ajax({
        url: "editEmployed.jsp?dni=" + dni,
        dataType: 'html',
        success: function (data) {
            $('#content-tablas').html(data);
        }
    });
}
