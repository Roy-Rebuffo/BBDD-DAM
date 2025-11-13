package Principal;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import model.Dept;

public class Principal5 {

	public static void main(String[] args) {
		EntityManagerFactory emf = 
				Persistence.createEntityManagerFactory("JPAscott"); //nombre de la unidad de persistencia
		
		EntityManager em = emf.createEntityManager();
		EntityTransaction transaccion = em.getTransaction();
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
