package servlets;
import Logica.Empleado;
import Logica.Usuario;
import Persistencia.ControladoraParque;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ServletLogin", urlPatterns = {"/ServletLogin"})
public class ServletLogin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletLogin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletLogin at user: " +  "Cerrando session"+ "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session= request.getSession();
        session.invalidate();
        response.sendRedirect("/PoloPark/index.jsp");
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sesion= request.getSession();
        sesion.setMaxInactiveInterval(1800);
        
        String user_name= request.getParameter("user");
        String pass =request.getParameter("pass");
        
        ControladoraParque control= new ControladoraParque();
        Usuario user= control.obtenerUsuarioByNameAndPass(user_name, pass);
        
        if (user==null) {
            response.sendRedirect("index.jsp");
            
        }else{
            //RECUPERAR EMPLEADO
            int id= user.getId();
            Empleado emp= control.obtenerEmpleadoIdUser(id);
            sesion.setAttribute("emple", emp);
            sesion.setAttribute("user", user_name);
            //LINEA ORIGINAL
            //LINEA DE PRUEBA
            response.sendRedirect("indexPark.jsp");
        }
    }
    

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
