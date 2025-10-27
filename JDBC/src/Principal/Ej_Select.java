package Principal;

import java.math.BigDecimal;
import java.sql.*;

public class Ej_Select {
    public static final String SQL_SELECT = "SELECT * FROM EMPLEADOS;";

    public static void main(String[] args) {
        try (
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/clase", "root", "root");
            PreparedStatement sentencia = conn.prepareStatement(SQL_SELECT);
            ResultSet rs = sentencia.executeQuery();
        ) {
            // Mientras haya filas...
            while (rs.next()) {
                // Suponiendo que la tabla tiene columnas: ID, NOMBRE, SALARIO, FECHA
                int id = rs.getInt("ID");
                String nombre = rs.getString("NOMBRE");
                BigDecimal salario = rs.getBigDecimal("SALARIO");
                Timestamp fecha = rs.getTimestamp("FECHA");

                System.out.printf("ID: %d | Nombre: %s | Salario: %.2f | Fecha: %s%n",
                                  id, nombre, salario, fecha);
            }

        } catch (SQLException ex) {
            System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
