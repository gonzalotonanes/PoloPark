package servlets;

import Logica.Cliente;
import Logica.Entrada;
import Logica.Horario;
import Logica.Juego;
import Persistencia.ControladoraParque;
import Utilidades.Fecha;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ServletEntrada", urlPatterns = {"/ServletEntrada"})
public class ServletEntrada extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletEntrada</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletEntrada at " + request.getContextPath() + " "+ request.getAttribute("error")+ "</h1>");
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
        
        ControladoraParque control= new ControladoraParque();
        HttpSession s= request.getSession();
        
        //CLIENTE
        String nombre= request.getParameter("nombre");
        String apellido= request.getParameter("apellido");
        int dni= Integer.parseInt(request.getParameter("dni"));
        //FECHA
        String fecha= request.getParameter("fecha");
        Date fechaConvertida= Fecha.deStringToDate(fecha);
        String hora= request.getParameter("hora");
        //JUEGO
        String nombreJuego= request.getParameter("juego");
        //RECUPERAR JUEGO
        
        
        
        String[] hh= hora.split(":");
        
        
        
        
        
        
        Juego juego= obtenerJuego(nombreJuego);
        
        Horario horario= juego.getHorario();
        
      
        
        boolean comprobar=comprobarHora(hh,horario.getHoraDesde(),horario.getHoraHasta());
        
        
          if (comprobar) {
            Cliente cliente= new Cliente(dni, nombre, apellido);
            control.crearCliente(cliente);
            Entrada entrada= new Entrada(fechaConvertida, cliente, juego,hora);
            control.crearEntrada(entrada);
            response.sendRedirect("indexEntrada.jsp");
        }else{
              
              request.setAttribute("error", "ERROR");
              processRequest(request, response);
          }
        
        //
        
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    private boolean comprobarHora(String[] hora, String horaDesde,String horaHasta){
        //HORA ENTRADA
        int h1= Integer.parseInt(hora[0]);
        int h2= Integer.parseInt(hora[1]);
        int minEntradas= (h1*60 +h2); 
        
        
        //HORA INICIO Y FIN DE JUEGO 
        String[] horaInicio= horaDesde.split(":");
        String[] horaFin= horaHasta.split(":");
        //HORA DESDE PASADAS A MINUTOS
        int horaIniMin= (Integer.parseInt(horaInicio[0])*60) + Integer.parseInt(horaInicio[1]);
        //HORA HASTA PASADAS A MINUTOS
        int horaFinMin= (Integer.parseInt(horaFin[0])*60) + Integer.parseInt(horaFin[1]);
        
        
        if (minEntradas>= horaIniMin && minEntradas <=horaFinMin) {
            return true;
        }
        
        
        return false;
        
    }
   
    private Juego obtenerJuego(String nombreJuego){
        
            Juego juego=null;
         ControladoraParque control= new ControladoraParque();
        
        List<Juego> juegos= control.obtenerJuegos();
        for (Juego j : juegos) {
            
            if (j.getNombre().equals("Trencito")) {
                juego=j;
                return juego;
            }
        }
        
        
        return juego;
    }

}
