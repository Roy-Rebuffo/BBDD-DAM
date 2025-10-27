package Principal;

import java.math.BigDecimal;
import java.sql.*;
import java.time.LocalDateTime;

import Clases.Empleado;

public class Ej_Select2 {
    public static final String SQL_SELECT = "SELECT * FROM EMPLEADOS;";

    public static void main(String[] args) {
    	Empleado emp = null;
    	int id;
    	String nombre;
    	double salario;
    	Timestamp fecha;
    	
        try (
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/clase", "root", "root");
            PreparedStatement sentencia = conn.prepareStatement(SQL_SELECT);
        ) {
        	ResultSet resultados = sentencia.executeQuery();
            // Mientras haya filas...
            while(resultados.next()) {
            	id =resultados.getInt(1);
            	nombre = resultados.getString(2);
            	salario = resultados.getDouble(3);
            	fecha = resultados.getTimestamp(4);
            	emp = new Empleado (id,nombre,salario,fecha.toLocalDateTime());
            	System.out.println(emp);
            }

        } catch (SQLException ex) {
            System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
