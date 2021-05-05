
package Persistencia;

import Logica.Entrada;
import java.util.List;


public class ControllerTicket {
    
    EntradaJpaController jpaTicket= new EntradaJpaController();
    
    
    
    public Entrada findTicket(int id){
        return this.jpaTicket.findEntrada(id);
    }
    
    public List<Entrada> findTicket(){
        return this.jpaTicket.findEntradaEntities();
    }
    
}
