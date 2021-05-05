
package servlets;

import Logica.Horario;
import Logica.Juego;
import Persistencia.ControladoraParque;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ServletEdiJuego", urlPatterns = {"/ServletEdiJuego"})
public class ServletEdiJuego extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        int  horarios = (int) request.getAttribute("hora");
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletEdiJuego</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletEdiJuego at hora:" +horarios+"</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        RequestDispatcher rd;
        rd= request.getRequestDispatcher("indexGame.jsp");
        rd.include(request, response);
                
        //processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int codigo= Integer.parseInt(request.getParameter("codigo"));
        int capacidad= Integer.parseInt(request.getParameter("capacidad"));
        String nombre= request.getParameter("name");
        int ID_horario= Integer.parseInt(request.getParameter("horario"));
        
        ControladoraParque control= new ControladoraParque();
        Horario sche =control.obtenerHorario(ID_horario);
        
      

         Juego juego=control.obtenerJuego(codigo);
         juego.setCapacidad(capacidad);
         juego.setNombre(nombre);
         //Horario schedule= juego.getHorario();
         
         juego.setHorario(sche);
         
         
         
         
        control.editGame(juego);
        
        
        
        response.sendRedirect("indexGame.jsp");
        
        //processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
