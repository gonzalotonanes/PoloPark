$(document).ready(function () {
    
    
     $("#dni").keyup(function () {
                    if ($(this).val() <= 0) {
                        $("#btn-enviar").attr("disabled", true);
                    } else {
                        $("#btn-enviar").attr("disabled", false);
                    }
                });
    
    $('#btn-create-ticket-menu').click(function () {
        $.ajax({
            url: "createTicket.jsp",
            dataType: 'html',
            success: function (data) {
                $('#content-tablas').html(data);
            }
        });
    });

    $('#btn-list-ticket').click(function () {
        $.ajax({
            url: "listTickets.jsp",
            dataType: 'html',
            success: function (data) {
                $('#content-tablas').html(data);
            }
        });
    });

    

  $('#form-ticket').validate({
                    rules: {
                        fecha: {
                            required: true
                        },
                        hora: {
                            required: true
                        },
                        nombre: {
                            required: true
                        },
                        apellido: {
                            required: true
                        },
                        dni: {
                            required: true,
                            number: true,
                            minlength: 8

                        },
                        juego: {
                            required: true
                        }
                    },
                    messages: {
                        fecha: {
                            required: "campo requerido"
                        },
                        hora: {
                            required: "campo requerido"
                        },
                        nombre: {
                            required: "campo requerido"
                        },
                        apellido: {
                            required: "campo requerido"
                        },
                        dni: {
                            required: "campo requerido",
                            minlentgh: "8 Dígitos"
                            
                        },
                        juego: {
                            required: "campo requerido"
                        }
                    }
                });
});




function editTicket(codigo) {
    $.ajax({
        url: "editTicket.jsp?codigo=" + codigo,
        dataType: 'html',
        success: function (data) {

            $('#content-tablas').html(data);
        }
    });

};


