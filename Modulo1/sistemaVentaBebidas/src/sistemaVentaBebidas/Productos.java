package sistemaVentaBebidas;

import java.util.Scanner;

public class Productos {

	//atributos
	private int id;
	private String nombreProducto;
	private int precio;
	private int stock;
	
	//getters y setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombreProducto() {
		return nombreProducto;
	}
	public void setNombreProducto(String nombreProducto) {
		this.nombreProducto = nombreProducto;
	}
	public int getPrecio() {
		return precio;
	}
	public void setPrecio(int precio) {
		this.precio = precio;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	
	//constructor	
	
	public Productos() {
		
		pideNombre();
		pidePrecio();
		pideStock();
	}
	/*
	public Productos(int id, String nombreProducto, int precio, int stock) {
		super();
		this.id = id;
		this.nombreProducto = nombreProducto;
		this.precio = precio;
		this.stock = stock;
	} */
	
	
	//Otros metodos
	
	//metodo que solicita el nombre del producto, desde el constructor Productos
	public void pideNombre() {
		
		Scanner scan = new Scanner (System.in);
		System.out.println("Ingresa el nombre del Producto:");
		nombreProducto = scan.nextLine();
		
	}
	
	//metodo que solicita el precio del producto, desde el constructor Productos
	public void pidePrecio() {
		
		Scanner scan = new Scanner (System.in);
		System.out.println("Ingresa el precio del Producto:" + devolverNombre() + ":");
		precio = scan.nextInt();
		
	}
	
	//metodo que solicita el stock del producto, desde el constructor Productos
	public void pideStock() {
			
			Scanner scan = new Scanner (System.in);
			System.out.println("Ingresa el stock del Producto:" + devolverNombre() + ":");
			stock = scan.nextInt();
			
		}
		
	public String devolverNombre() {
		return nombreProducto;
	}
	
	public int devolverPrecio() {
		return precio;
	}	
	
	public int devolverStock() {
		return stock;
	
		
	}

	public void modificarStock(int sto) {
		stock = stock - sto;
		System.out.println("La venta fue realizada");
	}

	public boolean quedaStock(int sto) {
		
		if (stock>=sto) {
			return true;
		}else {
			System.out.println("Error,tan solo quedan:" + stock + "unidades");
			return false;
		}
	}

}
