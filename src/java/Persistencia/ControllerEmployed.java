package Persistencia;

import Logica.Empleado;
import java.util.List;

public class ControllerEmployed {
    
    private EmpleadoJpaController employedJpa= new EmpleadoJpaController();
    
    
    public Empleado findEmployed(int id){
        
        return this.employedJpa.findEmpleado(id);
    }
    
     public List<Empleado> findEmployees(){
        
        return this.employedJpa.findEmpleadoEntities();
    }
}
