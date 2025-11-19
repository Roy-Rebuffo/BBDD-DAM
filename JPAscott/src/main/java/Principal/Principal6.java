//Hacer un CRUD completo

package Principal;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import model.Dept;
import model.Emp;

public class Principal6 {

	public static void main(String[] args) {
		EntityManagerFactory emf = 
				Persistence.createEntityManagerFactory("JPAscott"); //nombre de la unidad de persistencia
		
		EntityManager em = emf.createEntityManager();
		EntityTransaction transaccion = em.getTransaction();
		transaccion.begin();
		
		
		TypedQuery<Emp> consulta = 
				(TypedQuery<Emp>) em.createNamedQuery("Emp.updateOne");
		
		int filas = consulta.executeUpdate();
		
		transaccion.commit();
		em.close();

	}

}
