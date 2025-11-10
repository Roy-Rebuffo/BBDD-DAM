	/*****************************************************************************************************/
	/*****************************************************************************************************/
						/*____    _    __  __ ____ ___    _    ____    ____  _____              
						 / ___|  / \  |  \/  | __ )_ _|  / \  |  _ \  |  _ \| ____|             
						| |     / _ \ | |\/| |  _ \| |  / _ \ | |_) | | | | |  _|               
						| |___ / ___ \| |  | | |_) | | / ___ \|  _ <  | |_| | |___              
						 \____/_/  _\_\_|_ |_|____/___/_/  _\_\_| \_\_|____/|_____| _   _ _   _ 
						|  _ \| | | | ____|  _ \_   _/ _ \/ ___|  / ___|| ____/ ___| | | | \ | |
						| |_) | | | |  _| | |_) || || | | \___ \  \___ \|  _|| |  _| | | |  \| |
						|  __/| |_| | |___|  _ < | || |_| |___) |  ___) | |__| |_| | |_| | |\  |
						|_|  _ \___/|_____|_|_\_\|_| \___/|____/ _|____/|_____\____|\___/|_| \_|
						| \ | | ____/ ___| ____/ ___|_ _|  _ \  / \  |  _ \                     
						|  \| |  _|| |   |  _| \___ \| || | | |/ _ \ | | | |                    
						| |\  | |__| |___| |___ ___) | || |_| / ___ \| |_| |                    
						|_| \_|_____\____|_____|____/___|____/_/   \_\____/
						*/                
	/*****************************************************************************************************/
	/*****************************************************************************************************/

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
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+res, "root", "1234");
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

		try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+res, "root", "1234");
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
		try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys", "root", "1234");
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
		            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + res, "root", "1234");
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
	
	public static void realizarCompra(String res) {
		System.out.print("\nIntroduzca el importe de la compra: ");
		double importe =Double.parseDouble(sc.nextLine());
		
		String SQL_SELECT = "SELECT * FROM CAJERO ORDER BY MONEDA DESC";
		String SQL_UPDATE = "UPDATE CAJERO SET CANTIDAD = ? WHERE MONEDA = ?";
		
		try (
	            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + res, "root", "1234");
	            PreparedStatement select = conn.prepareStatement(SQL_SELECT);
				PreparedStatement update = conn.prepareStatement(SQL_UPDATE);
	            ResultSet rs = select.executeQuery();
	        ) {
	            // Mientras haya filas...
	            while (rs.next() && importe > 0.001) {
	                double moneda = rs.getDouble("MONEDA");
	                int cantidad = rs.getInt("CANTIDAD"); 

	                //Calcular cuantas monedas/billetes podemos usar
	                int necesarias = (int)(importe/moneda);
	                if(necesarias > cantidad) necesarias = cantidad;
	                
	                double totalUsado = necesarias * moneda;
	                importe -= totalUsado;
	                importe = Math.round(importe * 100.0) / 100.0;
	                
	                //Actualizamos la tabla
	                if(necesarias > 0) {
	                	int nuevaCant = cantidad - necesarias;
	                	update.setInt(1, nuevaCant);
	                	update.setDouble(2, moneda);
	                	update.executeUpdate();
	                	
	                	System.out.printf("Usadas %.2f€ x %d unidades (quedan %d)\n",
	                            moneda, necesarias, nuevaCant);
	                }
	            }
	            
	            if(importe > 0.001) {
	            	System.out.println("\nNo hay suficiente cantidad para cubrir la compra.");
	            }else {
	            	System.out.println("\nCompra realizada correctamente");
	            }

	        } catch (SQLException ex) {
	            System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }
		
	}
	public static void introducirDinero(String res) {
	    String SQL_UPDATE = "UPDATE CAJERO SET CANTIDAD = CANTIDAD + ? WHERE MONEDA = ?";
	    String SQL_SELECT = "SELECT * FROM CAJERO ORDER BY MONEDA DESC";

	    try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + res, "root", "1234");
	         PreparedStatement select = conn.prepareStatement(SQL_SELECT);
	         PreparedStatement update = conn.prepareStatement(SQL_UPDATE);
	         ResultSet rs = select.executeQuery()) {

	        boolean continuar = true;
	        while (continuar) {
	            System.out.print("\nIndique el valor de la moneda/billete a ingresar (ej: 10, 0.5): ");
	            double valor = Double.parseDouble(sc.nextLine());

	            System.out.print("¿Cuántas unidades de " + valor + "€ desea ingresar?: ");
	            int cantidad = Integer.parseInt(sc.nextLine());

	            update.setInt(1, cantidad);
	            update.setDouble(2, valor);
	            int filas = update.executeUpdate();

	            if (filas > 0) {
	                System.out.printf("Se han ingresado %d unidades de %.2f€ correctamente.\n", cantidad, valor);
	            } else {
	                System.out.printf("La moneda %.2f€ no existe.\n", valor);
	            }

	            System.out.print("¿Desea ingresar más dinero? (s/n): ");
	            String respuesta = sc.nextLine();
	            if (!respuesta.equalsIgnoreCase("s")) {
	                continuar = false;
	            }
	        }

	        System.out.println("\nIngreso completado.");
	        System.out.println("Monedas y billetes disponibles después de actualizar:\n");

	        // Mostrar todas las monedas registradas
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

	public static void transferirFondos(String origen, String destino) {
	    String SQL_UPDATE_RESTAR = "UPDATE CAJERO SET CANTIDAD = CANTIDAD - ? WHERE MONEDA = ?";
	    String SQL_UPDATE_SUMAR = "UPDATE CAJERO SET CANTIDAD = CANTIDAD + ? WHERE MONEDA = ?";

	    try (
	        Connection connOrigen = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + origen, "root", "1234");
	        Connection connDestino = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + destino, "root", "1234");
	        PreparedStatement updateRestar = connOrigen.prepareStatement(SQL_UPDATE_RESTAR);
	        PreparedStatement updateSumar = connDestino.prepareStatement(SQL_UPDATE_SUMAR);
	    ) {
	        System.out.println("\nMonedas y billetes disponibles en " + origen + ":\n");
	        listar(origen);

	        boolean continuar = true;
	        while (continuar) {
	            System.out.print("\nIngrese el valor de la moneda/billete a transferir: ");
	            double valor = Double.parseDouble(sc.nextLine());

	            System.out.print("¿Cuántas unidades de " + valor + "€ desea transferir?: ");
	            int cantidad = Integer.parseInt(sc.nextLine());

	            // Restar del banco origen
	            updateRestar.setInt(1, cantidad);
	            updateRestar.setDouble(2, valor);
	            int filasRestadas = updateRestar.executeUpdate();

	            if (filasRestadas > 0) {
	                // Sumar al banco destino
	                updateSumar.setInt(1, cantidad);
	                updateSumar.setDouble(2, valor);
	                updateSumar.executeUpdate();

	                System.out.printf("Transferidas %.2f€ x %d unidades de %s a %s\n",
	                        valor, cantidad, origen, destino);
	            } else {
	                System.out.printf("No hay suficientes unidades de %.2f€ en %s para transferir.\n",
	                        valor, origen);
	            }

	            System.out.print("¿Desea transferir más dinero? (s/n): ");
	            String respuesta = sc.nextLine();
	            if (!respuesta.equalsIgnoreCase("s")) {
	                continuar = false;
	            }
	        }

	        System.out.println("\nTransferencia completada.");

	    } catch (SQLException ex) {
            System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
        } catch (Exception ex) {
            ex.printStackTrace();
        }
	}


	/*****************************************************************************************************/
	/*******************************************Fin Métodos***********************************************/


	public static void secondMenu(String res) {
		crearSchema(res);//Primero que cree el Schema y luego que lo use
		/**********Crear metodo usarBanco para modularizar*************/
		String SQL_USE = "USE `" + res + "`";
		try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + res, "root", "1234");
				PreparedStatement sentencia = conn.prepareStatement(SQL_USE);) {
			
			System.out.println("\nEjecutando: " + SQL_USE + "\n");
			sentencia.execute();

			System.out.println("USANDO BANCO: " + res + "\n");
		} catch (SQLException ex) {
			System.err.format("%s %s", ex.getMessage(), ex.getSQLState());
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		String[] opciones = { "1.-Listar", 
				"2.-Realizar Compra", 
				"3.-Introducir Dinero", 
				"4.-Transferir Fondos",
				"5.-Cambiar BBDD", 
				"6.-Salir" };
		int op;
		String basura;

		do {
			op = Menu.menu(sc, opciones);

			switch (op) {
			case 1: // Listar
				listar(res); // Recoge el banco que le llega por parametro del primer menu y lo envia al listar
				break;
			case 2: // Realizar compra
				realizarCompra(res);
				break;
			case 3: // Introducir Dinero
				introducirDinero(res);
				break;
			case 4: // Transferir fondos
				System.out.print("Escriba por teclado el 'Banco destino'\nal que quiera hacer la transferencia(ej.'Santander,Caixa,...'): ");
                String destino = sc.nextLine();
                transferirFondos(res, destino); // res = banco origen
			    break;
			case 5: // Cambiar BBDD
				firstMenu();
				break;
			}
			if (op != opciones.length) {
				System.out.print("\tPresione una tecla para continuar");
				basura = sc.nextLine();
			}
		} while (op != opciones.length);
	}
	
	public static void firstMenu() {
		String [] bancos = {"1.-BBVA",
				"2.-Santander",
				"3.-Caixa",
				"4.-Sabadell",
				"5.-Salir"};
		int op;
		String basura;

		do {
			System.out.println("¿Qué banco quiere usar?");
			
			op = Menu.menu(sc, bancos);

			switch (op) {
		    case 1:
		        secondMenu("BBVA");
		        break;
		    case 2:
		        secondMenu("Santander");
		        break;
		    case 3:
		        secondMenu("Caixa");
		        break;
		    case 4:
		        secondMenu("Sabadell");
		        break;
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
