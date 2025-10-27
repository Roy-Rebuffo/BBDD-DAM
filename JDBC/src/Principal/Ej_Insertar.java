package Principal;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;

public class Ej_Insertar {
	public static final String SQL_INSERT = "INSERT INTO EMPLEADOS(NOMBRE,SALARIO,FECHA) VALUES (?,?,?);";
	
	public static void main(String[] args) {
		try (
				Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3307/clase","root","root");
				PreparedStatement sentencia = conn.prepareStatement(SQL_INSERT);) {
			
			sentencia.setString(1,"Royzao"); // Primer ternario (?) que se encuentra en el insert
			sentencia.setBigDecimal(2, new BigDecimal(35250.50)); // Segundo ternario (?) que se encuentra en el insert
			sentencia.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			
			int row = sentencia.executeUpdate(); //Devuelve el nº de filas insertadas
			
			System.out.println("Filas insertadas" + row);
			
		} catch (SQLException ex) {
			System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
