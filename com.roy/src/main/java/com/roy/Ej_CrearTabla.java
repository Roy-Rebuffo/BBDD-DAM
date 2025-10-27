package com.roy;
//que contenga como pirmer campo PK(moneda) y segundo campo (cantidad)

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Ej_CrearTabla {
	private static final String SQL_CREATE="CREATE TABLE IF NOT EXISTS CAJERO("+
			"MONEDA DECIMAL (10,2) PRIMARY KEY,"+
			"CANTIDAD DECIMAL (10,2) NOT NULL"+
			")";
	
	public static void main(String[] args) {
		try (
				Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3307/banco","root","root");
				PreparedStatement sentencia = conn.prepareStatement(SQL_CREATE);) {
			sentencia.execute();
			System.out.println("Tabla creada.");
		} catch (SQLException ex) {
			System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
