package sistemaElectrodomesticos;

/* sus atributos son resolución (en pulgadas) y sintonizador TDT(booleano),
además de los atributos heredados.*/
public class Television extends Electrodomestico{
	
	private int resolucion = 20; //pulgadas
	private boolean sintonizadorTDT = false;
	
//Constructor por defecto	
	public Television() {
		super();
	}
	
// Un constructor con el precio y el peso. El resto por defecto.
	public Television(int precioBase,int peso ) {
		super(precioBase,peso);
	}
		
/*Constructor con la resolución, sintonizador TDT 
 y el resto de atributos heredados. Recuerda que debes llamar al constructor de la clase padre.	*/
	public Television(int tipoElectro, int resolucion, boolean sintonizadorTDT, int precioBase, String color, char consumoEnergetico, int peso) {
		super(tipoElectro, precioBase, color, consumoEnergetico, peso);
		this.resolucion = resolucion;
		this.sintonizadorTDT = sintonizadorTDT;
	}
	
//Getters
	public int getResolucion() {
		return resolucion;
	}

	public boolean isSintonizadorTDT() {
		return sintonizadorTDT;
	}

//Setters
	public void setResolucion(int resolucion) {
		this.resolucion = resolucion;
	}

	public void setSintonizadorTDT(boolean sintonizadorTDT) {
		this.sintonizadorTDT = sintonizadorTDT;
	}	

/*si tiene una resolución mayor de 40 pulgadas, se incrementara el precio un 30% y si tiene un sintonizador TDT incorporado,
aumentara 50E. Recuerda que las condiciones que hemos visto en la clase Electrodoméstico también deben afectar al precio. */	
	public double precioFinal(char consumoEnergetico, int peso, int resolucion, boolean sintonizadorTDT) {
		
		double precio = super.precioFinal(consumoEnergetico, peso);
		int valor=0;
		
		if(sintonizadorTDT ==true) {
			valor =  50;
		
			if(resolucion > 40) {
				precio = precio*0.3 + valor;
			}
			
		}
		
		return precio;

  }	
}
