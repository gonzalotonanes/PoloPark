package servlets;

import Logica.Horario;
import Persistencia.ControllerSchedule;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletEditSchedule", urlPatterns = {"/ServletEditSchedule"})
public class ServletEditSchedule extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletEditSchedule</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletEditSchedule at " + request.getContextPath() + "</h1>");
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
        
        String hDesde= request.getParameter("hDesde");
        String hHasta= request.getParameter("hHasta");
        int idSche= Integer.parseInt(request.getParameter("idSche"));
        
       
        
        
        ControllerSchedule controller= new ControllerSchedule();
        Horario schedule= controller.findSchedule(idSche);
        schedule.setHoraDesde(hDesde);
        schedule.setHoraHasta(hHasta);
        
        
        
        controller.editSchedule(schedule);
        
        
        response.sendRedirect("indexConfig.jsp");
        
        
        
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
