package Principal;
//CREAR UNA CLASE EMPLEADO
//CREAR UN ARRAYLIST DE EMPLEADOS

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;

import Clases.Empleado;

public class Ej_InsertarArrayList {
	public static final String SQL_INSERT = "INSERT INTO EMPLEADOS(NOMBRE,SALARIO,FECHA) VALUES (?,?,?);";
	
	private static void llenar(ArrayList<Empleado> e) {
		e.add(new Empleado("Juan", 5000, LocalDateTime.of(2025,10,10,12,23,20)));
		e.add(new Empleado("Pepe", 10000, LocalDateTime.of(2025,10,10,12,23,20)));
		e.add(new Empleado("Laura", 3000, LocalDateTime.of(2025,10,10,12,23,20)));
		e.add(new Empleado("Nisu", 20000, LocalDateTime.of(2025,10,10,12,23,20)));
		e.add(new Empleado("Elsota", 8000, LocalDateTime.of(2025,10,10,12,23,20)));
	}
	
	public static void main(String[] args) {
		
		ArrayList<Empleado> lista = new ArrayList<Empleado>();//Creamos el arrayList
		llenar(lista);
		int filas = 0;
		try (
				Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3307/clase","root","root");
				PreparedStatement sentencia = conn.prepareStatement(SQL_INSERT);) {
			for (Empleado emp : lista) {//Recorremos el arrayList e insertamos cada Empleado
				sentencia.setString(1,emp.getNombre()); // Primer ternario (?) que se encuentra en el insert
				sentencia.setDouble(2,emp.getSalario()); // Segundo ternario (?) que se encuentra en el insert
				sentencia.setTimestamp(3, Timestamp.valueOf(emp.getFecha()));
				
				filas += sentencia.executeUpdate(); //Devuelve el nº de filas insertadas
				System.out.println("Filas insertadas " + filas);
			}
			
			
			
			
		} catch (SQLException ex) {
			System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
