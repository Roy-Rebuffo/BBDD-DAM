package Main;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import Model.ALUMNOS;

public class Principal10 {

	public static void main(String[] args) {
		EntityManagerFactory emf = 
				Persistence.createEntityManagerFactory("JPAnuevo"); //nombre de la unidad de persistencia
		
		EntityManager em = emf.createEntityManager();
		
		TypedQuery<ALUMNOS> consulta = 
				em.createQuery("SELECT DISTINCT d from ALUMNOS d join d.cursos c",ALUMNOS.class);
		
		List<ALUMNOS> lista = consulta.getResultList();
		
		for (ALUMNOS a : lista) {
			System.out.println(a);
		}
		em.close();

	}

}
