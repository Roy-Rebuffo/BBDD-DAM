package Main;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import Model.ALUMNOS;
import Model.CURSOS;

public class Principal7 {

	public static void main(String[] args) {
		EntityManagerFactory emf = 
				Persistence.createEntityManagerFactory("JPAnuevo"); //nombre de la unidad de persistencia
		
		EntityManager em = emf.createEntityManager();
		EntityTransaction transaccion = em.getTransaction();
		
		ALUMNOS pedro = new ALUMNOS("1","pedro","gomez",30);
		ALUMNOS maria = new ALUMNOS("2","maria","perez",25);
		CURSOS cursoJava = new CURSOS("JAVA2","Introducción Java",20,300,pedro);
		CURSOS cursoNet = new CURSOS("NET2","Introducción NET",20,300,pedro);
		CURSOS cursoPHP = new CURSOS("PHP2","Introducción PHP",15,250,maria);
		
		transaccion.begin();
		
		em.persist(pedro);
		em.persist(maria);
		em.persist(cursoJava);
		em.persist(cursoNet);
		em.persist(cursoPHP);
		
		transaccion.commit();
		em.close();

	}

}
