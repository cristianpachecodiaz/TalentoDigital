package sistemaImc;

import java.util.Scanner;

public class Principal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// declaración 3 objetos tipo persona
		
		String rut;
		String nombre;
		int edad;
		char sexo;
		double peso;
		double altura;
		
		Scanner scan = new Scanner(System.in);
		
		System.out.println("Ingrese Rut");
		rut = scan.nextLine();
		
		System.out.println("Ingrese Nombre");
		nombre = scan.nextLine();
		
		System.out.println("Ingrese Edad");
		edad = scan.nextInt();
		scan.nextLine();
		
		System.out.println("Ingrese Sexo"); //revisar scan para char
		sexo = scan.next().charAt(0);
		
		System.out.println("Ingrese Peso");
		peso = scan.nextFloat();
		scan.nextLine();
		
		System.out.println("Ingrese Altura");
		altura = scan.nextFloat();
		scan.nextLine();
		
		//Insertar en constructor los datos capturado en teclado en objeto persona1
		
		
		Persona persona1 = new Persona (rut, nombre, edad, sexo, peso, altura);
		
		System.out.println("IMC");
		System.out.println("---");
		if (persona1.logicaImc() == -1) {
			System.out.println("Estas debajo de tu peso ideal");
			System.out.println("-----------------------------");
			}else if (persona1.logicaImc() == 0) {
				System.out.println("Estas dentro de tu peso ideal");
				System.out.println("-----------------------------");
			 }else if (persona1.logicaImc() == 1) {
				 System.out.println("Estas con sobrepeso");
				 System.out.println("-------------------");
			 
			  }
		System.out.println("Edad");
		System.out.println("---");
		if (persona1.esMayorDeEdad() == true) {
			System.out.println("Eres Mayor de Edad");
			System.out.println("------------------");
		}else
			System.out.println("Eres Menor de Edad");
		    System.out.println("-------------------");
		
		//Insertar en constructor los datos capturado en teclado en objeto persona2
		Persona persona2 = new Persona (rut, nombre, edad, sexo);
		
		//Insertar mediante Setters los datos capturado en teclado en objeto persona3
		
		Persona persona3 = new Persona ();
		persona3.setRut(rut);
		persona3.setNombre(nombre);
		persona3.setEdad(edad);
		persona3.setSexo(sexo);
		persona3.setPeso(peso);
		persona3.setAltura(altura);
		
		System.out.println("Datos de Objetos");
		System.out.println("-----------------");
		System.out.println("Objeto1:");
		System.out.println("Rut: " + persona1.getRut());
		System.out.println("Nombre: " + persona1.getNombre());
		System.out.println("Edad: " + persona1.getEdad());
		System.out.println("Sexo: " + persona1.getSexo());
		System.out.println("Peso: " + persona1.getPeso());
		System.out.println("Altura: " + persona1.getAltura());
		
		System.out.println("-----------------");
		System.out.println("Objeto2:");
		System.out.println("Rut: " + persona2.getRut());
		System.out.println("Nombre: " + persona2.getNombre());
		System.out.println("Edad: " + persona2.getEdad());
		System.out.println("Sexo: " + persona2.getSexo());
	
		System.out.println("-----------------");
		System.out.println("Objeto3:");
		System.out.println("Rut: " + persona3.getRut());
		System.out.println("Nombre: " + persona3.getNombre());
		System.out.println("Edad: " + persona3.getEdad());
		System.out.println("Sexo: " + persona3.getSexo());
		System.out.println("Peso: " + persona3.getPeso());
		System.out.println("Altura: " + persona3.getAltura());
	}

}
