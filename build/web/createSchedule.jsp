<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <body>
         <div class="container col-lg-6">
            <form class="row g-3" action="ServletRegSchedule" method="POST" id="form-schedule">
            <div class="col-md-3">
                <label  for="hDesde" class="form-label">Desde</label>
                <input type="time" class="form-control" name="hDesde" >
            </div>
            <div class="col-md-3">
                <label for="hHasta" class="form-label">Hasta</label>
                <input type="time" class="form-control" name="hHasta">
            </div>
            <div class="col-12">
                <button type="submit" class="btn btn-primary mx-auto d-block">Enviar</button>
            </div>
        </form>
        </div>
        <script src="js/scriptsSchedule.js"></script>
    </body>
</html>
