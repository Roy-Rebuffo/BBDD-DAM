package Principal;
//subir a todo el mundo un 10% su salario

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;

public class Ej_Update {
	public static final String SQL_UPDATE = "UPDATE EMPLEADOS SET SALARIO = ? WHERE NOMBRE = ?";
	public static void main(String[] args) {
		try (
				Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3307/clase","root","root");
				PreparedStatement sentencia = conn.prepareStatement(SQL_UPDATE);) {
			
			sentencia.setBigDecimal(1, new BigDecimal(8950.35)); // Primer parámetro el SALARIO
			sentencia.setString(2, "Royzao"); // Segundo parámetro el NOMBRE
			
			int row = sentencia.executeUpdate(); //Devuelve el nº de filas insertadas
			
			System.out.println("Filas actualizadas!" + row);
			
		} catch (SQLException ex) {
			System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
