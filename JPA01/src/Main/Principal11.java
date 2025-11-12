package Main;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import Model.ALUMNOS;

public class Principal11 {

	public static void main(String[] args) {
		EntityManagerFactory emf = 
				Persistence.createEntityManagerFactory("JPAnuevo"); //nombre de la unidad de persistencia
		
		EntityManager em = emf.createEntityManager();
		
		Query suma = em.createQuery("SELECT SUM(c.precio) FROM CURSOS c");
		Double total = (Double) suma.getSingleResult();
		System.out.println(total);
		em.close();
	}
}
