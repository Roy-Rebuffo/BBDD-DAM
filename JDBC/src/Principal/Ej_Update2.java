package Principal;
//subir a todo el mundo un 10% su salario

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;

public class Ej_Update2 {
	public static final String SQL_UPDATE = "UPDATE EMPLEADOS SET SALARIO = (SALARIO * ?)";
	public static void main(String[] args) {
		try (
				Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3307/clase","root","root");
				PreparedStatement sentencia = conn.prepareStatement(SQL_UPDATE);) {
			
			sentencia.setDouble(1, 1.2); // Primer parámetro el SALARIO			
			int row = sentencia.executeUpdate(); //Devuelve el nº de filas insertadas
			
			System.out.println("Filas actualizadas!" + row);
			
		} catch (SQLException ex) {
			System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}