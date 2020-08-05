package sistemaElectrodomesticos;

public class Lavadora extends Electrodomestico {
	
	private int carga = 5; //Por defecto, la carga es de 5 kg

//Constructor por defecto
	public Lavadora() {
		super();
	}
		
//constructor con el precio y peso. El resto por defecto.
	public Lavadora(int precioBase, int peso ) {
		super(precioBase, peso);
	}
	
//constructor con la carga y el resto de atributos heredados. Recuerda que debes llamar al constructor de la clase padre.
	public Lavadora(int tipoElectro,int carga, int precioBase, String color, char consumoEnergetico, int peso ) {
		super(tipoElectro, precioBase, color, consumoEnergetico, peso);
		this.carga = carga;
	}
	
//metodo getcarga
	public int getCarga() {
		return carga;
	}
	
//metodo set carga
	public void setCarga(int carga) {
		this.carga = carga;
	}
		
/*si tiene una carga mayor de 30 kg, aumentara el precio 50E, sino es así no se imcrementara el precio. 
Llama al método padre y añade el código necesario. Recuerda que las condiciones que hemos visto en la 
clase Electrodoméstico también deben afectar al precio. */ 
	
	public int  precioFinal(char consumoEnergetico, int peso) {
		
			int precio = super.precioFinal(consumoEnergetico, peso);
			
			if(peso >= 30) {
				precio += 50;			
			}
			
			return precio;
	}

	

	
}


