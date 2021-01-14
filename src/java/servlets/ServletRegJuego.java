package servlets;
import Logica.Horario;
import Logica.Juego;
import Persistencia.ControladoraParque;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletRegJuego", urlPatterns = {"/ServletRegJuego"})
public class ServletRegJuego extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletRegJuego</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletRegJuego at " + request.getParameter("horario") + "</h1>");
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
        
        String nombre=request.getParameter("nombre");
        int capacidad= Integer.parseInt(request.getParameter("capacidad"));
        int id= Integer.parseInt(request.getParameter("horario"));
        Horario h =recuperarJuego(id);
        Juego juego= new Juego(nombre, capacidad, h);
        
        ControladoraParque control = new ControladoraParque();
        
        
        control.crearJuego(juego);
        
        response.sendRedirect("indexJuegos.jsp");
        
        
        //processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    
    private Horario recuperarJuego(int cod){
        ControladoraParque control= new ControladoraParque();
        
        List<Horario> horarios= control.obtenerHorarios();
        
        for (Horario horario : horarios) {
            
            if (horario.getId()==cod) {
                return horario;
            }
        }
        
        return null;
    }

}
