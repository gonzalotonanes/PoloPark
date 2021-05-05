$(document).ready(function () {
    $('#btn-list-user').click(function () {
        $.ajax({
            url: "listUsers.jsp",
            dataType: 'html',
            success: function (data) {

                $('#content-tablas').html(data);
            }
        });
    });
    
    
    
    $('#form-edit-user').validate({
                    rules: {
                        password: {
                            required: true,
                            minlength: 6
                        }
                    },
                    messages: {
                        password: {
                            required: "campo requerido",
                            minlength: "6 caracteres mínimo"
                        }
                    }
                });
    
});

function editUser(id) {
    $.ajax({
        url: "editUser.jsp?id=" + id,
        dataType: 'html',
        success: function (data) {
            $('#content-tablas').html(data);
        }
    });
    
};