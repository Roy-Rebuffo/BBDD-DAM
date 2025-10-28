package main;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Scanner;

import Clases.Cajero;
import menu.Menu;

public class Inicio {
	public static final Scanner sc = new Scanner(System.in);

	/************************************Creación de Bancos y Tablas**************************************/
	/*****************************************************************************************************/
	public static void introducirDatos(String res) {
	    String SQL_INSERT = "INSERT INTO CAJERO (MONEDA, CANTIDAD) VALUES (?, ?);";

		// Array con todos los valores de las monedas y billetes
        double[] monedas = {
            500, 200, 100,
            50, 20, 10,
            5, 2, 1,
            0.5, 0.2, 0.1,
            0.05, 0.02, 0.01
        };

        try (
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/"+res, "root", "root");
            PreparedStatement sentencia = conn.prepareStatement(SQL_INSERT);
        ) {
        	System.out.println("Insertando filas..." + SQL_INSERT + "\n");
        	
            int totalFilas = 0;

            for (double moneda : monedas) {
                //BigDecimal valorMoneda = BigDecimal.valueOf(moneda);
                Double valorMoneda = Double.valueOf(moneda);
                //BigDecimal cantidad = BigDecimal.valueOf(Math.random() * 10); // aleatorio 0–10
                int cantidad = Integer.valueOf((int) (Math.random() * 100)); // Poner 100 a todos estos valores?

                //sentencia.setBigDecimal(1, valorMoneda);
                sentencia.setDouble(1, valorMoneda);
                //sentencia.setBigDecimal(2, cantidad);
                sentencia.setInt(2, cantidad);

                int filas = sentencia.executeUpdate();
                totalFilas += filas;
            }

            System.out.println("Filas insertadas: " + totalFilas + "\n");

        } catch (SQLException ex) {
        	System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
        } catch (Exception ex) {
            ex.printStackTrace();
        }
	}

	public static void crearTabla(String res) {
		String SQL_CREATE = "CREATE TABLE IF NOT EXISTS CAJERO(" + 
							"MONEDA DOUBLE PRIMARY KEY," + // CAMBIE DE DECIMAL A
							"CANTIDAD INT CHECK (CANTIDAD >=0) NOT NULL" + // CAMBIE DE DECIMAL A INT
							")";

		try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/"+res, "root", "root");
				PreparedStatement sentencia = conn.prepareStatement(SQL_CREATE);) {
			System.out.println("Ejecutando: " + SQL_CREATE + "\n");
			sentencia.execute();
			System.out.println("Tabla creada.\n");
		} catch (SQLException ex) {
			System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		introducirDatos(res);
	}

	public static void crearSchema(String res) {
		String SQL_CREATE = "CREATE DATABASE IF NOT EXISTS `" + res + "`";
		try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/sys", "root", "root");
				PreparedStatement sentencia = conn.prepareStatement(SQL_CREATE);) {
			
			System.out.println("Ejecutando: " + SQL_CREATE + "\n");
			sentencia.execute();
			System.out.println("SCHEMA creado.\n");
		} catch (SQLException ex) {
			System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		crearTabla(res);
	}
	/*****************************************************************************************************/
	/************************************Fin Creación de Bancos y Tablas**********************************/
	
	
	/*********************************************Métodos*************************************************/
	/*****************************************************************************************************/
	public static void listar(String res) {
		String SQL_SELECT = "SELECT * FROM CAJERO";
		 try (
		            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/" + res, "root", "root");
		            PreparedStatement sentencia = conn.prepareStatement(SQL_SELECT);
		            ResultSet rs = sentencia.executeQuery();
		        ) {
		            // Mientras haya filas...
		            while (rs.next()) {
		                double moneda = rs.getDouble("MONEDA");
		                int cantidad = rs.getInt("CANTIDAD"); 

		                System.out.printf("MONEDA: %.2f \t| CANTIDAD: %d\n",
		                                  moneda, cantidad);
		            }

		        } catch (SQLException ex) {
		            System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
		        } catch (Exception ex) {
		            ex.printStackTrace();
		        }
	}
	
	public static void realizarCompra() {
		System.out.print("Introduzca el importe de la compra: ");
		int c =Integer.valueOf(sc.nextLine());
		
		
		
	}
	/*****************************************************************************************************/
	/*******************************************Fin Métodos***********************************************/


	public static void secondMenu(String res) {
		crearSchema(res);//Primero que cree el Schema y luego que lo use
		/**********Crear metodo usarBanco para modularizar*************/
		String SQL_USE = "USE `" + res + "`";
		try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/" + res, "root", "root");
				PreparedStatement sentencia = conn.prepareStatement(SQL_USE);) {
			
			System.out.println("\nEjecutando: " + SQL_USE + "\n");
			sentencia.execute();

			System.out.println("USANDO BANCO: " + res + "\n");
		} catch (SQLException ex) {
			System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		String[] opciones = { "1.-Listar", "2.-Realizar Compra", "3.-Introducir Dinero", "4.-Transferir Fondos",
				"5.-Cambiar BBDD", "6.-Salir" };
		int op;
		String basura;

		do {
			op = Menu.menu(sc, opciones);

			switch (op) {
			case 1: // Listar
				listar(res); // Recoge el banco que le llega por parametro del primer menu y lo envia al listar
				break;
			case 2: // Realizar compra
				// realizarCompra();
				break;
			}
			if (op != opciones.length) {
				System.out.print("\tPresione una tecla para continuar");
				basura = sc.nextLine();
			}
		} while (op != opciones.length);
	}
	
	public static void firstMenu() {
		String [] bancos = {"1.-BBVA","2.-Santander","3.-Caixa","4.-Sabadell", "5.-Salir"};
		int op;
		String basura;

		do {
			System.out.println("¿Qué banco quiere usar?");
			String res = sc.nextLine();
			
			op = Menu.menu(sc, bancos);

			switch (op) {
			case 1: // Crear banco 1
				res = "BBVA";
				secondMenu(res);
				break;
			case 2: // Crear banco 2
				res = "Santander";
				secondMenu(res);
				break;
			case 3: // Crear banco 3
				res = "Caixa";
				secondMenu(res);
			case 4: // Crear banco 4
				res = "Sabadell";
				secondMenu(res);
			}
			if (op != bancos.length) {
				System.out.print("\tPresione una tecla para continuar");
				basura = sc.nextLine();
			}
		} while (op != bancos.length);
		
		
		
	}
	
	public static void main(String[] args) {
		firstMenu();
		
	}

}
