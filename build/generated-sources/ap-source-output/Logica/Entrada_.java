package Logica;

import Logica.Cliente;
import Logica.Juego;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-05-05T16:36:59")
@StaticMetamodel(Entrada.class)
public class Entrada_ { 

    public static volatile SingularAttribute<Entrada, Date> fecha;
    public static volatile SingularAttribute<Entrada, Cliente> cliente;
    public static volatile SingularAttribute<Entrada, Integer> codigo;
    public static volatile SingularAttribute<Entrada, String> hora;
    public static volatile SingularAttribute<Entrada, Juego> juego;

}