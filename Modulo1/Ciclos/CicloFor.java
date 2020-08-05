package Ciclos;

public class CicloFor {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		float Suma = 0;
		float Promedio = 0;
		int Numero = 0;
		
		for (int i=0; i<100;i++)
		{
			Suma = Suma + i;
			Numero = Numero + 1;
		}
		
		Promedio = Suma /Numero;
		System.out.println("resultado suma:"+Suma);
		System.out.println("resultado promedio:"+Promedio);

	}

}
