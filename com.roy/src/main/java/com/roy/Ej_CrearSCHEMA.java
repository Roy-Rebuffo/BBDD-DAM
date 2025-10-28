package com.roy;
//Crear schema banco
//dentro crear una tabla que se llame cajero

//que contenga como pirmer campo PK(moneda) y segundo campo (cantidad)
/*y rellenar esta tabla con 500/200/100/50/20/10/5/2/1,... 
de cantidad de cada una de las monedas en uso*/
//vector de [5,2,1] desde 2 a menos 2 (para generar sentencias y cada vez que itere insertamos)



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Ej_CrearSCHEMA {
	//public static final String SQL_DELETE = "DROP DATABASE IF EXISTS BANCO";
	public static final String SQL_CREATE = "CREATE DATABASE IF NOT EXISTS BANCO";
	public static void main(String[] args) {
		try (
				Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3307/sys","root","root");
				//PreparedStatement sentencia0 = conn.prepareStatement(SQL_DELETE);
				PreparedStatement sentencia = conn.prepareStatement(SQL_CREATE);) {
			//sentencia0.execute();
			//System.out.println("SCHEMA borrado.");
			sentencia.execute();
			System.out.println("SCHEMA creado.");
		} catch (SQLException ex) {
			System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
