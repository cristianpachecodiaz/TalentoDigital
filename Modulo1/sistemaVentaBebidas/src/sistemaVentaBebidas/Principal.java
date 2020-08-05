package sistemaVentaBebidas;

import java.util.ArrayList;
import java.util.Scanner;

public class Principal {

	public static void menu(ArrayList<Productos> productos) {
	
		int eleccion;
		
		Scanner scan = new Scanner (System.in);
		do {
			System.out.println("Sistema de Venta Almacen Don Jeshu");
			System.out.println("----------------------------------");
			System.out.println("Opción 1: Ingreso de Productos");
			System.out.println("Opción 2: Generar Venta");
			System.out.println("Opción 3: Salir");
			
			eleccion = scan.nextInt();
			scan.nextLine();
			
			switch (eleccion) {
				case 1: {
					 menuProductos(productos);
					//System.out.println("menu-productos");
					break;
				}
			
				case 2: {
					menuVentas(productos);
					//System.out.println("menu-ventas");
					break;
				
				}
				
				case 3: {
					//salir();
					System.out.println("Hasta Luego!");
					break;
				
				}
				
				default:{
					System.out.println("error");
					break;
				}
			
			}
			
		}while (eleccion !=3);
		
		scan.close();
	}

	
	private static void menuProductos(ArrayList<Productos> productos) {
		// TODO Auto-generated method stub
		String response = "no";
		Scanner scan = new Scanner (System.in);
		do {
			System.out.println("Ingreso de Productos");
			System.out.println("--------------------");
			productos.add(new Productos());
		
			System.out.println("Desea ingresar un Producto: (si/no)");
			response = scan.nextLine();
		}while(response.equalsIgnoreCase("si"));
		
	}
	
	
	private static void menuVentas(ArrayList<Productos> productos) {
		// TODO Auto-generated method stub
		Scanner scan = new Scanner(System.in);
		int opcion;
		int unidades=0;
		String respuesta;
		int factura = 0;
		do {
			System.out.println("Venta de Productos:");
			System.out.println("------------------");
			
			for (int i=0; i< productos.size();i++) {
				
				System.out.println("Elija opción: " + i + ", para comprar: " + productos.get(i).devolverNombre() + " El precio es de: " + productos.get(i).devolverPrecio() + " pesos " + ", y el stock es de: " + productos.get(i).devolverStock() + " unidades. ");
			}
			
			opcion = scan.nextInt();
			
			System.out.println("Ha elegido comprar: " + productos.get(opcion).devolverNombre());
			
			for (int i = opcion; i<productos.size();i++) {
				
				unidades = unidades(productos);
				
				if (productos.get(i).quedaStock(unidades)==true) {
					
					productos.get(i).modificarStock(unidades);
					unidades = unidades*productos.get(i).devolverPrecio();
					
				}
				break;
			}
			factura = factura + unidades;
			
			System.out.println("¿Desea comprar otro producto? (sin/no)");
			respuesta = scan.nextLine();
			
		} while (respuesta.equalsIgnoreCase("si"));
		
		System.out.println("El total de su compra es: " + factura +" pesos");
		
	}

	
	private static int unidades (ArrayList<Productos> productos) {
		
		Scanner scan = new Scanner (System.in);
		int unidades;
		System.out.println("¿cuantas unidades quieres?");
		unidades = scan.nextInt();
		return unidades;
	}
		
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//variable captura datos del teclado
		Scanner scan = new Scanner(System.in);
		
		ArrayList<Productos> productos = new ArrayList<Productos>();
		menu(productos);
	}
	
	
}	




