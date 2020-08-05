package clases;

import java.util.Scanner;

//Clase hija que define carro Kromi
public class Kromi extends Carro {
	
	//atributos
	private String a�oFabricacion;
	private String marca;
			
	//toString
	@Override
	public String toString() {
		return "Kromi [tipoCarro=" + tipoCarro + ", cantidadOcupantes=" + cantidadOcupantes + ", fechaIngresoInst=" + fechaIngresoInst + ", fila=" + fila + ", columna=" + columna + ", a�oFabricacion=" + a�oFabricacion + ", marca=" + marca + "]";
	}
	
	//getters and setters	
	public String getA�oFabricacion() {
		return a�oFabricacion;
	}

	public void setA�oFabricacion(String a�oFabricacion) {
		this.a�oFabricacion = a�oFabricacion;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

			
	//constructores
	
	public Kromi(){
		
		a�oFabricacion();
		marca();
	}
	
	public Kromi(String tipoCarro, int cantidadOcupantes, String fechaIngresoInst, int fila, int columna, String a�oFabricacion, String marca) {
		super(tipoCarro, cantidadOcupantes, fechaIngresoInst, fila, columna);
		this.a�oFabricacion = a�oFabricacion;
		this.marca = marca;
		
	}

	//metodo que solicita a�o de fabricaci�n
		public void a�oFabricacion() {
				
		Scanner scan = new Scanner (System.in);
		System.out.println("Ingresa el a�o de fabricacion del carro " + getTipoCarro() + ":");
		a�oFabricacion = scan.nextLine();
		}
		
		//metodo que solicita fecha de ingreso de la marca
		public void marca() {
						
		Scanner scan = new Scanner (System.in);
		System.out.println("Ingresa la marca del carro " + getTipoCarro() + ":");
		marca = scan.nextLine();
		}
}

