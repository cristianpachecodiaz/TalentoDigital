package SistemaAdoptaUnPerrito;
import javax.swing.JOptionPane;

public class AdoptaPerrito {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		
		
		
		
		Perro arrayObjetos[] = new Perro [3]; //array de la clase Perro
		
		//Ingreso de Perros
		for (int i=0; i<arrayObjetos.length;i++) {
			String Id=JOptionPane.showInputDialog("Id del Perro");
			String Nombre=JOptionPane.showInputDialog("Nombre del Perro");
			String Raza=JOptionPane.showInputDialog("Raza del Perro");
			String Edad=JOptionPane.showInputDialog("Edad del Perro");
			String Vacunado=JOptionPane.showInputDialog("Esta vacunado?");
			String Operado=JOptionPane.showInputDialog("Esta operado?");
			
			arrayObjetos[i]=new Perro(Id,Nombre,Raza,Edad,Vacunado,Operado);
		}
		
		//Despliegue en consola de perros ingresados
		for (int i=0;i<arrayObjetos.length;i++){
			System.out.println(arrayObjetos[i].Id);
            System.out.println(arrayObjetos[i].Nombre);
            System.out.println(arrayObjetos[i].Raza);
            System.out.println(arrayObjetos[i].Edad);
            System.out.println(arrayObjetos[i].Vacunado);
            System.out.println(arrayObjetos[i].Operado);
		}
			
		Persona arrayObjetos2[] = new Persona [3]; //array de la clase Persona
		//Ingreso de Personas
				for (int i=0; i<arrayObjetos2.length;i++) {
					String Rut=JOptionPane.showInputDialog("Rut");
					String Nombre=JOptionPane.showInputDialog("Nombre");
					String Apellido=JOptionPane.showInputDialog("Apellido");
					String Direccion=JOptionPane.showInputDialog("Direccion");
					String Ciudad=JOptionPane.showInputDialog("Ciudad");
					
					
					arrayObjetos2[i]=new Persona(Rut,Nombre,Apellido,Direccion,Ciudad);
				}
				
				//Despliegue en consola de personas ingresadas
				for (int i=0;i<arrayObjetos.length;i++){
					System.out.println(arrayObjetos2[i].Rut);
		            System.out.println(arrayObjetos2[i].Nombre);
		            System.out.println(arrayObjetos2[i].Apellido);
		            System.out.println(arrayObjetos2[i].Direccion);
		            System.out.println(arrayObjetos2[i].Ciudad);
		            
				}

		
		/*
				
				//Ingreso de Adopción
				for (int i=0; i<arrayObjetos.length;i++) {
					String Id=JOptionPane.showInputDialog("Id del Perro");
					String Nombre=JOptionPane.showInputDialog("Rut de la Persona");
					
					arrayObjetos3[i]=new Perro(Id,Nombre,Raza,Edad,Vacunado,Operado);
				
					//Despliegue en consola de personas ingresadas
				
				
				
		*/
		
	}
}