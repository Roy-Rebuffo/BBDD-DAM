//Hacer un CRUD completo

package Principal;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import java.util.Scanner;

import model.Dept;
import model.Emp;

public class Main {

	private static final Scanner sc = new Scanner(System.in);
    private static final EntityManagerFactory emf = 
        Persistence.createEntityManagerFactory("JPAscott");
    private static final EntityManager em = emf.createEntityManager();
    private static final EntityTransaction transaccion = em.getTransaction();

    public static void main(String[] args) {
        boolean salir = false;

        while (!salir) {
            System.out.println("\n--- MENÚ JPA SENCILLO ---");
            System.out.println("1. Insertar departamento");
            System.out.println("2. Actualizar salario de empleado");
            System.out.println("3. Borrar empleado");
            System.out.println("4. Listar Empleados/Deptos");
            System.out.println("5. Salir");
            System.out.print("Elige una opción: ");
            
            String opcion = sc.nextLine();
            switch (opcion) {
                case "1":
                    insertarDepto();
                    break;
                case "2":
                    actualizarSalario();
                    break;
                case "3":
                	borrarEmpleado();
                	break;
                case "4":
                	read();
                	break;
                case "5":
                    salir = true;
                    break;
                default:
                    System.out.println("Opción no válida, prueba de nuevo.");
            }
        }

        emf.close();
        System.out.println("Adiós.");
    }
    
    public static void insertarDepto() {
    	transaccion.begin();
    	
    	Dept nuevo = new Dept(60,"SEGARO_AMEGO","BARCELONA");
		
		em.persist(nuevo);
		
		transaccion.commit();
		em.close();
    }
    
    public static void actualizarSalario() {
    	transaccion.begin();

    	TypedQuery<Emp> consulta = 
				(TypedQuery<Emp>) em.createNamedQuery("Emp.updateWho");
		
		consulta.setParameter("nuevoSal", 2050f);
		consulta.setParameter("num", 7499);
		
		int filas = consulta.executeUpdate();
		
		transaccion.commit();
		em.close();
    }
    
    public static void borrarEmpleado() {
    	transaccion.begin();
		
		TypedQuery<Emp> consulta = 
				(TypedQuery<Emp>) em.createNamedQuery("Emp.deleteOne");
		
		int filas = consulta.executeUpdate();
		
		transaccion.commit();
		em.close();
    }
    public static void read() {
    	transaccion.begin();	
		
		TypedQuery<Dept> consulta = 
				(TypedQuery<Dept>) em.createNamedQuery("Dept.findAll");
		
		List<Dept> lista = consulta.getResultList();
		
		for (Dept a : lista) {
			
			System.out.println(a);
		}
		transaccion.commit();
		em.close();
    }
}
