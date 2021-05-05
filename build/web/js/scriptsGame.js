$(document).ready(function () {
   $('#formEditGame').validate({
                    rules: {
                        name: {
                            required: true,
                            minlength: 3
                        },
                        capacidad: {
                            required: true,
                            number: true,
                        },
                        horario: {
                            required: true,
                        }
                    },
                    messages: {
                        name: {
                            required: "campo requerido",
                            minlength: "3 char minimo"
                        },
                        capacidad: {
                            required: "campo requerido",
                            number: "tiene que ser un numero"
                        },
                        horario: {
                            required: "campo requerido"
                        }
                    }
                });

    $('#createGameForm').validate({
        rules: {
            nombre: {
                required: true,
                minlength: 3
            },
            capacidad: {
                required: true,
                number: true
            }
        },
        messages: {
            nombre: {
                required: "campo requerido",
                minlength: "3 caracteres minimo"
            },
            capacidad: {
                required: "campo requerido",
                number: "debe ser un numero"
            }
        }
    });

    $('#btn-listar').click(function () {
        
        $.ajax({
            url: "listGames.jsp",
            dataType: 'html',
            success: function (data) {
                $('#content-tablas').html(data);
            }
        });
    });
    
    $('#btn-create-game').click(() => {
            $.ajax({
                url: "createGame.jsp",
                dataType: 'html',
                success: function (data) {
                    $('#content-tablas').html(data);
                }
            });
        });


    $("#capacidad").keyup(function () {
        if ($(this).val() <= 0) {
            $("#btn-enviar").attr("disabled", true);
        } else {
            $("#btn-enviar").attr("disabled", false);
        }
    });

});

function editGame(codigo){
    
    $.ajax({
            url: "editGame.jsp?codigo=" + codigo,
            dataType: 'html',
            success: function (data) {
                $('#content-tablas').html(data);
            }
        });
    
}