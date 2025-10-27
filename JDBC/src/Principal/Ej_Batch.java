package Principal;
//subir a todo el mundo un 10% su salario

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Arrays;

public class Ej_Batch {
	private static final String SQL_DROP = "DROP TABLE IF EXISTS EMPLEADOS";
	private static final String SQL_CREATE="CREATE TABLE IF NOT EXISTS EMPLEADOS("+
			"ID INT PRIMARY KEY AUTO_INCREMENT,"+
			"NOMBRE VARCHAR(100) NOT NULL,"+
			"SALARIO DECIMAL (10,2) NOT NULL,"+
			"FECHA DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP"+
			")";
	public static final String SQL_DELETE = "DELETE FROM EMPLEADOS WHERE SALARIO > ? ";
	public static final String SQL_INSERT = "INSERT INTO EMPLEADOS(NOMBRE,SALARIO,FECHA) VALUES (?,?,?);";
	public static final String SQL_UPDATE = "UPDATE EMPLEADOS SET SALARIO = ? WHERE NOMBRE = ?";

	public static void main(String[] args) {
		try (
				Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3307/clase","root","root");
				PreparedStatement pd = conn.prepareStatement(SQL_DROP);
				PreparedStatement pc = conn.prepareStatement(SQL_CREATE);
				PreparedStatement pi = conn.prepareStatement(SQL_INSERT);
				PreparedStatement pu = conn.prepareStatement(SQL_UPDATE);) {
			
			conn.setAutoCommit(false);
			pd.execute();
			pc.execute();
			
			pi.setString(1, "Carlos");
			pi.setBigDecimal(2, new BigDecimal(18777.20));
			pi.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			
			pi.addBatch();
			
			pi.setString(1, "Maria");
			pi.setBigDecimal(2, new BigDecimal(5555.34));
			pi.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
			
			pi.addBatch();
			
			pu.setBigDecimal(1, new BigDecimal(8950.35));
			pu.setString(2, "Maria"); //Encuentra a maria
			
			pu.addBatch();
			
			pd.setDouble(1, 0);
			
			
			int [] rows = pi.executeBatch();
			int [] rows2 = pu.executeBatch();
			
			System.out.println(Arrays.toString(rows));
			System.out.println(Arrays.toString(rows2));
			
			conn.commit();//si todo va bien hacemos commit
		} catch (SQLException ex) {
			System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
