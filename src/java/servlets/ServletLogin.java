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
        
        Usuario usu= (Usuario) request.getAttribute("user");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletLogin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletLogin at user: " + usu.getUsuario()+"Id: " + usu.getId()+" pass: "+usu.getContraseña()+ "</h1>");
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
        
        HttpSession sesion= request.getSession();
        sesion.setMaxInactiveInterval(3600);
        
        
        String user_name= request.getParameter("user");
        String pass =request.getParameter("pass");
        
        ControladoraParque control= new ControladoraParque();
        List<Usuario> usuarios=null;
        usuarios=control.obtenerUsuarios();
        Usuario user= this.encontrarUsuario(usuarios, user_name,pass);
        

        
        if (user==null) {
            
            response.sendRedirect("index.jsp");
            
        }else{
            //RECUPERAR EMPLEADO
            int id= user.getId();
            Empleado emp= control.obtenerEmpleado(36172960);
            sesion.setAttribute("emple", emp);
            response.sendRedirect("empleados.jsp");
        }
        
        
        
        //processRequest(request, response);
        
        
    }
    
    private Usuario encontrarUsuario(List<Usuario> usuarios,String user_name,String pass){
        
         for (Usuario usu : usuarios) {
            if (usu.getUsuario().equals(user_name) && usu.getContraseña().equals(pass)) {
                return usu;
                
            }
        }
         return null;
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
