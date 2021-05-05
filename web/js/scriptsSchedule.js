$(document).ready(()=>{
   
   $("#btn-new-schedule").click(()=>{
      
       $.ajax({
            url: "createSchedule.jsp",
            success: function (data) {
                 $('#content-tablas').html(data);
            }
       }); 
   });
   
    $("#btn-list-schedules").click(()=>{
      
       $.ajax({
            url: "listSchedules.jsp",
            success: function (data) {
                 $('#content-tablas').html(data);
            }
       }); 
   });
   
   $('#form-schedule').validate({
                    rules: {
                        hDesde: {
                            required: true
                        },
                        hHasta: {
                            required: true
                        }
                    },
                    messages: {
                        hDesde: {
                            required: "Field required"
                        },
                        hHasta: {
                            required: "Field required"
                        }
                    }
                });
    
    
});

function editSchedule(id){
    $.ajax({
            url: "editSchedule.jsp?id="+id,
            success: function (data) {
                 $('#content-tablas').html(data);
            }
       }); 
}