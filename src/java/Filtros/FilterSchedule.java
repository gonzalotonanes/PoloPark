package Filtros;

import Logica.Horario;
import Persistencia.ControllerSchedule;
import java.io.IOException;
import java.util.List;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FilterSchedule implements Filter{

     @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }
    
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        
        HttpSession session = req.getSession(false);
        
        //HttpSession sesion= ((HttpServletRequest)request).getSession();
         ControllerSchedule controller= new ControllerSchedule();
         List<Horario> horarios= controller.findSchedules();
        
        if (!horarios.isEmpty()) {
            chain.doFilter(req, resp);
        }else {
            ((HttpServletResponse)response).sendRedirect("/PoloPark/indexGames.jsp");
        }
    }
    
    
     @Override
    public void destroy() {
    }
    
}
