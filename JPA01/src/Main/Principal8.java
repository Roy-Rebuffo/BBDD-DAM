package Main;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import Model.ALUMNOS;
import Model.CURSOS;

public class Principal8 {

	public static void main(String[] args) {
		EntityManagerFactory emf = 
				Persistence.createEntityManagerFactory("JPAnuevo"); //nombre de la unidad de persistencia
		
		EntityManager em = emf.createEntityManager();
		
		TypedQuery<ALUMNOS> consulta = 
				(TypedQuery<ALUMNOS>) em.createNamedQuery("ALUMNOS.todos");
		
		
		for (ALUMNOS alumno : consulta.getResultList()) {
			System.out.println(alumno);
		}
		em.close();

	}

}
