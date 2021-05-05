package Logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Empleado extends Persona implements Serializable{
    
    
    @OneToOne
    private Usuario usuario;
    
    @Id
    @GeneratedValue(strategy= GenerationType.SEQUENCE)
    private int id;
            

    public Empleado() {
    }

    public Empleado(int dni, String nombre, String apellido, String direccion, int telefono, Date fechaNac) {
        super(dni, nombre, apellido, direccion, telefono, fechaNac);
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Empleado{" + "usuario=" + usuario + ", id=" + id + '}';
    }
    
    
    
    
    
    
   
    
    
    
    
}
