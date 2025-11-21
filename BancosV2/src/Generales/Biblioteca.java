package Generales;

import java.io.BufferedReader;
import java.io.IOException;

public class Biblioteca {
	/**
	 * @throws IOException 
	 * @throws NumberFormatException *************************************************************/
	public static int menu(String [] opciones, BufferedReader sc) throws NumberFormatException, IOException {
		int op;
		do {
			for (String item : opciones) System.out.println("\t\t" + item);
				System.out.println("Elija una opción --->");
				op = Integer.valueOf(sc.readLine());	
		}while(op<1||op>opciones.length);
			return op;
	}
	/***************************************************************/

	public static double redondear(double n, int d) {
		double v = Math.pow(10, d);
		return Math.round(n*d)/v;
	}
	/**
	 * @throws IOException 
	 * @throws InterruptedException *************************************************************/
	public static void clearConsole() throws IOException, InterruptedException {
		try {
			String op = System.getProperty("os.name");
			ProcessBuilder pb;
			if(op.contains("Windows")) {
				pb = new ProcessBuilder("cmd", "/c", "cls");
			}else {
				pb = new ProcessBuilder("clear");
			}
			Process startProcess = pb.inheritIO().start();
			startProcess.waitFor();
		} catch (IOException e) {
			System.out.println(e);
		}
	}
	/***************************************************************/


	
}
