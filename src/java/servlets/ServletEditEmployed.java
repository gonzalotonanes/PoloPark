package servlets;

import Logica.Empleado;
import Persistencia.ControladoraParque;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletEditEmployed", urlPatterns = {"/ServletEditEmployed"})
public class ServletEditEmployed extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletEditEmployed</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletEditEmployed at " + request.getContextPath() + "</h1>");
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
        
        
        ControladoraParque control= new ControladoraParque();
        
        int dni= Integer.parseInt(request.getParameter("dni"));
        int dni_original= Integer.parseInt(request.getParameter("dni_original"));
        String nombre= request.getParameter("nombre");
        String apellido= request.getParameter("apellido");
        Empleado emp=control.obtenerEmpleado(dni_original);
        
        
        if (dni!=dni_original) {
            emp.setDni(dni);
        }
        
        emp.setApellido(apellido);
        emp.setNombre(nombre);
        
        
        control.EditEmployed(emp);
        
        response.sendRedirect("indexEmployees.jsp");
        
        
        
                
                
                
        
        //processRequest(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
