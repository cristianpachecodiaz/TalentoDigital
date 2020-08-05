package Ejercicio1_Password;

import java.util.Scanner;

public class Principal 
{

	public static void main(String[] args) 
	{
		// TODO Auto-generated method stub
		
		// Declaración de variables
		int Numero1=0;
		int Numero2=0;
		Scanner Dato = new Scanner(System.in);
		
		System.out.println("Ingrese el largo del Arreglo de Passwords");
		Numero1 = Dato.nextInt();
		
		System.out.println("Ingrese el largo de la Password");
		Numero2 = Dato.nextInt();
		
		Dato.close();
		Password arrayObjetos [] = new Password [Numero1]; //Array de passwords
		
		for (int i=0; i<arrayObjetos.length;i++) 
		{
			
			arrayObjetos[i]=new Password(Numero2);
		}
				
		//Despliegue en consola el arreglo con passwords
		for (int i=0;i<arrayObjetos.length;i++)
		{
			System.out.println(arrayObjetos[i].getContrasena());
		}
		            
			
		
	}

}
