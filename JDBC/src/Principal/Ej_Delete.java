package Principal;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;

public class Ej_Delete {
	public static final String SQL_DELETE = "DELETE FROM EMPLEADOS WHERE SALARIO > ? ";
	public static void main(String[] args) {
		try (
				Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3307/clase","root","root");
				PreparedStatement sentencia = conn.prepareStatement(SQL_DELETE);) {
			
			sentencia.setDouble(1, 11000); // Primer parámetro el SALARIO			
			int row = sentencia.executeUpdate(); //Devuelve el nº de filas insertadas
			
			System.out.println("Filas BORRADAS! " + row);
			
		} catch (SQLException ex) {
			System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
