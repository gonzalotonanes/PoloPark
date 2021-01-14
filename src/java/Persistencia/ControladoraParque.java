package Persistencia;

import Logica.Cliente;
import Logica.Empleado;
import Logica.Entrada;
import Logica.Horario;
import Logica.Juego;
import Logica.Usuario;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ControladoraParque {

    EmpleadoJpaController empleadoJPA = new EmpleadoJpaController();
    JuegoJpaController juegoJPA = new JuegoJpaController();
    UsuarioJpaController usuarioJPA = new UsuarioJpaController();
    EntradaJpaController entradaJPA= new EntradaJpaController();
    ClienteJpaController clienteJPA= new ClienteJpaController();
    HorarioJpaController horarioJPA= new HorarioJpaController();
    

    //CRUD EMPLEADO
    public void crearEmpleado(Empleado empleado) {
        try {
            this.empleadoJPA.create(empleado);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraParque.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void EliminarEmpleado(Empleado emp) {
        int dni = emp.getDni();
        try {
            this.empleadoJPA.destroy(dni);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraParque.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Empleado obtenerEmpleado(int dni) {

        return this.empleadoJPA.findEmpleado(dni);
    }

    public void modificarEmpleado(Empleado emp) {
        try {
            this.empleadoJPA.edit(emp);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraParque.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Empleado> ObtenerEmpleados() {

        return this.empleadoJPA.findEmpleadoEntities();
    }

    //CRUD USUARIO
    public void crearUsuario(Usuario usuario) {
        try {
            this.usuarioJPA.create(usuario);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraParque.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Usuario obtenerUsuario(int id) {
        
        Usuario u=usuarioJPA.findUsuario(id);
        return u;
    }
    public List<Usuario> obtenerUsuarios(){
        return this.usuarioJPA.findUsuarioEntities();
    }
    


    
    //CRUD JUEGO
    public void crearJuego(Juego juego){
        try {
            this.juegoJPA.create(juego);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraParque.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List<Juego> obtenerJuegos(){
        
        return this.juegoJPA.findJuegoEntities();
    }
    
    public Juego obtenerJuego(int cod){
        
        return this.juegoJPA.findJuego(cod);
    }
    
    
    //CRUD ENTRADA
    public void crearEntrada(Entrada entrada){
        
        Juego j= entrada.getJuego();
        Cliente c= entrada.getCliente();
        
        if (j!=null && c!=null) {
            this.entradaJPA.create(entrada);
        }
    }
    
    public List<Entrada> obtenerEntradas(){
       return this.entradaJPA.findEntradaEntities();
    }
    
    public Entrada obtenerEntrada(int cod){
        
        return this.entradaJPA.findEntrada(cod);
    }
    
    public void editarEntrada(Entrada entrada){
        try {
            this.entradaJPA.edit(entrada);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraParque.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    //CRUD CLIENTE
    public void crearCliente(Cliente cliente){
        try {
            this.clienteJPA.create(cliente);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraParque.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List<Cliente> obtenerClientes(){
        return this.clienteJPA.findClienteEntities();
    }
    
    
    //CRUD HORARIO
    
    public void crearHorario(Horario horario){
         this.horarioJPA.create(horario);
    }
    
    public List<Horario> obtenerHorarios(){
        return this.horarioJPA.findHorarioEntities();
    }
    
    public Horario obtenerHorario(int id){
        return this.horarioJPA.findHorario(id);
    }
}
