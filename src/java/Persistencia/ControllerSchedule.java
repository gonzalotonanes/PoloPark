package Persistencia;

import Logica.Horario;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ControllerSchedule {
 
    
    HorarioJpaController horarioJPA= new HorarioJpaController();
    
    
    public List<Horario> findSchedules(){
        return this.horarioJPA.findHorarioEntities();
    }
    
     public Horario findSchedule(int id){
        return this.horarioJPA.findHorario(id);
    }
    
    public void editSchedule(Horario horario){
        
        try {
            this.horarioJPA.edit(horario);
        } catch (Exception ex) {
            Logger.getLogger(ControllerSchedule.class.getName()).log(Level.SEVERE, null, ex);
        }
    } 
     
}
