package Persistencia;
import Logica.Juego;
import java.util.List;

public class ControllerGame {
    private JuegoJpaController juegoJPA = new JuegoJpaController();
    
    public Juego findGame(int id){
        return this.juegoJPA.findJuego(id);
    }
    
     public List<Juego> findGames(){
        return this.juegoJPA.findJuegoEntities();
    }
}
