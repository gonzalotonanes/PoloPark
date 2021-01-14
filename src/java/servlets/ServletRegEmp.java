package servlets;

import Logica.Empleado;
import Logica.Usuario;
import Persistencia.ControladoraParque;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletRegEmp", urlPatterns = {"/ServletRegEmp"})
public class ServletRegEmp extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServlerRegEmp</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServlerRegEmp at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);

        
        //OBTENGO TODOS LOS PARAMETROS
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String direccion = request.getParameter("direccion");
        int tel = Integer.parseInt(request.getParameter("tel"));
        int dni = Integer.parseInt(request.getParameter("dni"));
        String fecha = request.getParameter("fecha");
        String nameUser = request.getParameter("usuario");
        String pass = request.getParameter("password");

        
        //INSTANCIO LA CONTROLADORA
        ControladoraParque control = new ControladoraParque();

        Usuario usuario = new Usuario(nameUser, pass);
        
        Date f= deStringToDate(fecha);

        
        Empleado empleado = new Empleado(dni, nombre, apellido, direccion, tel, f);

        //SE PERSISTE EN LA BASE DE DATOS
        empleado.setUsuario(usuario);
        control.crearUsuario(usuario);
        control.crearEmpleado(empleado);

    }

    private static synchronized java.util.Date deStringToDate(String fecha) {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd"); //formato
        Date fechaEnviar = null;
        try {
            fechaEnviar = df.parse(fecha);
            return fechaEnviar;
        } catch (ParseException ex) {
            ex.printStackTrace();
            return null;
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
