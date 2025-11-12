package Main;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import Model.ALUMNOS;
import Model.CURSOS;

public class Principal12 {

	public static void main(String[] args) {
		EntityManagerFactory emf = 
				Persistence.createEntityManagerFactory("JPAnuevo"); //nombre de la unidad de persistencia
		
		EntityManager em = emf.createEntityManager();
		EntityTransaction transaccion = em.getTransaction();
		
		ALUMNOS pedrito = new ALUMNOS("3","Pedrito","ChupameElPito",30);
		
		CURSOS cursoJava2 = new CURSOS("JAVA22","Introducción Java", 20 , 300, pedrito);
		CURSOS cursoNET2 = new CURSOS("NET22","Introducción Java", 20 , 300, pedrito);
		CURSOS cursoPHP2 = new CURSOS("PHP22","Introducción Java", 20 , 300, pedrito);
		
		pedrito.add(cursoJava2);
		pedrito.add(cursoNET2);
		pedrito.add(cursoPHP2);
	
		transaccion.begin();
		
		em.persist(pedrito);
		
		transaccion.commit();
		em.close();
	}
}
