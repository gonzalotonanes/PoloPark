package servlets;
import Logica.Cliente;
import Logica.Entrada;
import Logica.Juego;
import Persistencia.ControladoraParque;
import Utilidades.Fecha;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ServletEditEntrada", urlPatterns = {"/ServletEditTicket"})
public class ServletEditTicket extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Juego j= (Juego)request.getAttribute("juego");
        String n=j.getNombre();
        int c=j.getCapacidad();
        int cod=j.getCod();
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletEditEntrada</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Nombre: "+n+ " capadidad: "+c+" codigo: "+cod+"</h1>");
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
        
        HttpSession sesion= (HttpSession)request.getSession();
        //DATOS CLIENTE
        String nombre= request.getParameter("nombre");
        String apellido= request.getParameter("apellido");
        int dni= Integer.parseInt(request.getParameter("dni"));
        String fecha= request.getParameter("fecha");
        String hora= request.getParameter("hora");
        int cod_juego=Integer.parseInt(request.getParameter("juego"));
        int codigo_entrada= Integer.parseInt(request.getParameter("codigo"));
        
        ControladoraParque control = new ControladoraParque();
        Juego j= control.obtenerJuego(cod_juego);
        
        Cliente c= new Cliente(dni, nombre, apellido);
        Entrada e=control.obtenerEntrada(codigo_entrada);
        e.setCliente(c);
        e.setFecha(Fecha.deStringToDate(fecha));
        e.setHora(hora);
        e.setJuego(j);
        
        
        control.editarEntrada(e);
        
        response.sendRedirect("indexTickets.jsp");
        
        
        
        
        //processRequest(request, response);
    }
    
     private Juego obtenerJuego(String nombreJuego){
        
            Juego juego=null;
         ControladoraParque control= new ControladoraParque();
        
        List<Juego> juegos= control.obtenerJuegos();
        for (Juego j : juegos) {
            
            if (j.getNombre().equals(nombreJuego)) {
                juego=j;
                return juego;
            }
        }
        
        
        return juego;
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
