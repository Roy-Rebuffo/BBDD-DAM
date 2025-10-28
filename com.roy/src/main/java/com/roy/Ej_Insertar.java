package com.roy;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Ej_Insertar {
    public static final String SQL_INSERT = "INSERT INTO CAJERO(MONEDA, CANTIDAD) VALUES (?, ?);";

    public static void main(String[] args) {
        // Array con todos los valores de las monedas y billetes
        double[] monedas = {
            500, 200, 100,
            50, 20, 10,
            5, 2, 1,
            0.5, 0.2, 0.1,
            0.05, 0.02, 0.01
        };

        try (
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/banco", "root", "root");
            PreparedStatement sentencia = conn.prepareStatement(SQL_INSERT);
        ) {
            int totalFilas = 0;

            for (double moneda : monedas) {
                //BigDecimal valorMoneda = BigDecimal.valueOf(moneda);
                Double valorMoneda = Double.valueOf(moneda);
                //BigDecimal cantidad = BigDecimal.valueOf(Math.random() * 10); // aleatorio 0–10
                int cantidad = Integer.valueOf((int) (Math.random() * 10));

                //sentencia.setBigDecimal(1, valorMoneda);
                sentencia.setDouble(1, valorMoneda);
                //sentencia.setBigDecimal(2, cantidad);
                sentencia.setInt(2, cantidad);

                int filas = sentencia.executeUpdate();
                totalFilas += filas;
            }

            System.out.println("Filas insertadas: " + totalFilas);

        } catch (SQLException ex) {
        	System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
