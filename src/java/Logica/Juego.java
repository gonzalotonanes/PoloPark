package Logica;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Juego implements Serializable {
    
    @Id
    @GeneratedValue(strategy= GenerationType.SEQUENCE)
    private int cod;
    @Basic
    private String nombre;
    private int capacidad;
    private Horario horario;

    public Juego(int cod, String nombre, int capacidad, Horario horario) {
        this.cod = cod;
        this.nombre = nombre;
        this.capacidad = capacidad;
        this.horario = horario;
    }

    public Juego(String nombre, int capacidad, Horario horario) {
        this.nombre = nombre;
        this.capacidad = capacidad;
        this.horario = horario;
    }
    

    public Juego() {
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public Horario getHorario() {
        return horario;
    }

    public void setHorario(Horario horario) {
        this.horario = horario;
    }
    
    
    
    
    
}
