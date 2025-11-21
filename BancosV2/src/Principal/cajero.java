package Principal;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Generales.Biblioteca;

public class cajero {

	static BufferedReader sc =
			new BufferedReader(new InputStreamReader(System.in));
	static String bbdd = null;
	static String password = "root";
	static String conexion = "jdbc:mysql://localhost:3307/";
	/************************************************************************/
	public static boolean isNatural(int n) {return n>=0;} //ASEGURAR QUE LA MONEDA SEA MAYOR A 0
	/************************************************************************/
	public static boolean isMoneda(double moneda) {
		int n = 0;
		try (
				Connection con = DriverManager.getConnection(conexion + bbdd, "root", password);
				PreparedStatement s = con.prepareStatement("select count(*) nu from cajero where moneda = ?");	
				){
				s.setDouble(1,moneda); //RECIBE EL PARÁMETRO "?" DEL SELECT 
				ResultSet r = s.executeQuery();
				while(r.next()) n = r.getInt("nu");
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} catch(Exception e) {}
		if(n == 0) return false;
		return true;
	}
	/************************************************************************/
	public static void crearSchema() {
		try (
				Connection con = DriverManager.getConnection(conexion + "sys", "root", password);
				PreparedStatement s = con.prepareStatement(
						"CREATE SCHEMA IF NOT EXISTS " + bbdd);	
				){
				s.execute();
				System.out.printf("Base de datos %s creada\n",bbdd);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} catch(Exception e) {}
	}
	/************************************************************************/
	public static boolean existeBBDD(String bdatos) {
		int n = 0;
		try (
				Connection con = DriverManager.getConnection(conexion + "sys", "root", password);
				PreparedStatement s = con.prepareStatement(
						"select count(*) nu from INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = ?");
				){
				s.setString(1,bdatos); //RECIBE EL PARÁMETRO "?" DEL SELECT 
				ResultSet r = s.executeQuery();
				while(r.next()) n = r.getInt("nu");
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} catch(Exception e) {}
		if(n == 0) return false;
		return true;
	}
	/************************************************************************/
	public static void crearTabla() {
		String c = "CREATE TABLE CAJERO(MONEDA DOUBLE PRIMARY KEY, CANTIDAD INT CHECK(CANTIDAD>=0))";
		try (
				Connection con = DriverManager.getConnection(conexion + bbdd, "root", password);
				PreparedStatement s = con.prepareStatement(c);	
				){
				s.execute();
				System.out.printf("Tabla %s creada\n",c);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} catch(Exception e) {}
	}
	/************************************************************************/
	public static void insertarDatos() {
		String c = "INSERT INTO CAJERO VALUES(?,?)";
		int [] numero = {5,2,1};
		int row;
		try (
				Connection con = DriverManager.getConnection(conexion + bbdd, "root", password);
				PreparedStatement s = con.prepareStatement(c);	
				){
				for (int i = 2; i >= -2; i--) {
					for (int n : numero) {
						s.setDouble(1, Math.pow(10,i)*n);
						s.setInt(2, 10);
						row = s.executeUpdate();
					}
				}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} catch(Exception e) {}
	}
	/**
	 * @throws IOException **********************************************************************/
	public static void cambio() throws IOException {
		System.out.println("Indique la BBDD ->"); bbdd = sc.readLine();
		if(!existeBBDD(bbdd)) {
			crearSchema();
			crearTabla();
			insertarDatos();
		}
	}
	/************************************************************************/
	public static void listar() {
		String ca = "SELECT * FROM CAJERO ORDER BY MONEDA DESC";
		String cadena = "";
		int n = 5, c = 0;
		try (
				Connection con = DriverManager.getConnection(conexion + bbdd, "root", password);
				PreparedStatement s = con.prepareStatement(ca);	
				){
				ResultSet r = s.executeQuery();
				while(r.next()) {
					c++;
					cadena += String.format("%10.2f (%5d)",r.getDouble("MONEDA"),r.getInt("CANTIDAD"));
					if(c%n==0) {
						System.out.println(cadena);
						cadena = "";
					}
				}
				System.out.println(cadena);
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} catch(Exception e) {}
	}
	/**
	 * @throws InterruptedException 
	 * @throws IOException **********************************************************************/
	
	public static void introducirDinero() throws IOException {
		double suma = 0,moneda;
		int cantidad;
		String ca = "UPDATE CAJERO SET CANTIDAD = CANTIDAD+? WHERE MONEDA=?";
		System.out.print("Dime el dinero a introducir ");String pago = sc.readLine();
		//1-500#10-50#100-0.05
		try (
				Connection con = DriverManager.getConnection(conexion + bbdd, "root", password);
				PreparedStatement s = con.prepareStatement(ca);	
				){
				con.setAutoCommit(false);
				for (String item : pago.split("#")) {
					String partes2[]=item.split("-");
					cantidad = Integer.valueOf(partes2[0]);
					moneda = Double.valueOf(partes2[1]);
					if(isNatural(cantidad) && isMoneda(moneda)) {
						suma +=cantidad*moneda;
						s.setInt(1, cantidad);
						s.setDouble(2, moneda);
						s.addBatch();
					}
				}
				int[] rows = s.executeBatch();
				System.out.println("\nHa introducida usted en la caja " + suma + "\n");
				con.commit();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} catch(Exception e) {}
	}
	/**
	 * @throws IOException 
	 * @throws SQLException ***********************************************************************/
	public static void transferirFondos() throws IOException, SQLException {
		String origen, destino;
		System.out.print("Indique el origen de la transacción "); origen = sc.readLine();
		if(!existeBBDD(origen)) {
			System.out.println("La BBDD " + origen + " no existe.");
			return;
		}
		System.out.print("Indique el destino de la transacción "); destino = sc.readLine();

		if(!existeBBDD(destino)) {
			System.out.println("La BBDD " + destino + " no existe.");
			return;
		}
		
		String c = "UPDATE " + destino + ".CAJERO A SET CANTIDAD = CANTIDAD+(SELECT CANTIDAD FROM " + origen +".cajero B WHERE A.MONEDA = B.MONEDA)";
		
		Connection con = null;
		
		try {
			con = DriverManager.getConnection(conexion + "sys", "root", password);
			PreparedStatement p1 = con.prepareStatement(c);
			PreparedStatement p2 = con.prepareStatement("UPDATE " + origen + ".cajero SET CANTIDAD = 0");
			con.setAutoCommit(false);
			int r1 = p1.executeUpdate();
			int r2 = p2.executeUpdate();
			con.commit();
		} catch (SQLException e) {
			con.rollback();
			System.out.println(e.getMessage());
		} catch(Exception e) {}
	}
	/**
	 * @throws SQLException ***********************************************************************/
	public static void main(String[] args) throws IOException, InterruptedException, SQLException {
		String [] opciones = {
				"1.->LISTAR",
				"2.->REALIZAR COMPRA",
				"3.->INTRODUCIR DINERO",
				"4.->TRANSFERIR FONDOS",
				"5.->CAMBIAR DE BBDD",
				"6.->SALIR"
				};
		String pausa;
		int op;
		cambio();
		do {
			Biblioteca.clearConsole();
			System.out.println("\nEstá usted en la BBDD " + bbdd + "\n");
			op = Biblioteca.menu(opciones, sc);
			switch (op) {
			case 1://LISTAR
				listar();
				break;
			case 3:
				introducirDinero();
				break;
			case 4:
				transferirFondos();
				break;
			case 5:
				cambio();
			}
			if(op!=6) {
				System.out.println("Presione una tecla para continuar");
				pausa = sc.readLine();
			}else {
				break;
			}
				
		}while(true);
	}

}
