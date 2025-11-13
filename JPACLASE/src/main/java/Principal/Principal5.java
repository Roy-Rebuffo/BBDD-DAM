package Principal;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import model.Alumno;

public class Principal5 {

	public static void main(String[] args) {
		EntityManagerFactory emf = 
				Persistence.createEntityManagerFactory("RoySoft"); //nombre de la unidad de persistencia
		
		EntityManager em = emf.createEntityManager();
		EntityTransaction transaccion = em.getTransaction();
		transaccion.begin();
		
		TypedQuery<Alumno> consulta = 
				(TypedQuery<Alumno>) em.createNamedQuery("Alumno.findAll");
		
		List<Alumno> lista = consulta.getResultList();
		
		for (Alumno a : lista) {
			
			System.out.println(a);
		}
		transaccion.commit();
		em.close();

	}

}
