package sistemaElectrodomesticos;

public class Electrodomestico {

//Atributos ---los cuales se podran heredar
	private int tipoElectro = 0; //0 electro, 1 lavadora, 2 television
	private int precioBase = 100000;
	private String color = "blanco"; //blanco,negro,rojo,azul y gris. No importa si el nombre está en mayúsculas o minúsculas.
	private char consumoEnergetico = 'F'; //letras entre A y F
	private int peso= 5; //en kg
	
//Constructor por defecto
	public Electrodomestico() {
		super();
	}
	
//Constructor con el precio y peso
	public Electrodomestico(int precioBase, int peso) {
	super();
	this.precioBase = precioBase;
	this.peso = peso;
}
	
//Constructor con todos los atributos
	public Electrodomestico(int tipoElectro, int precioBase, String color, char consumoEnergetico, int peso) {
		super();
		this.tipoElectro = tipoElectro;
		this.precioBase = precioBase;
		this.color = color;
		this.consumoEnergetico = consumoEnergetico;
		this.peso = peso;
	}
	
//Metodos getters de todos los atributos
	
	public int getTipoElectro () {
		return tipoElectro;
	}
	public int getPrecioBase() {
		return precioBase;
	}

	public String getColor() {
		return color;
	}

	public char getConsumoEnergetico() {
		return consumoEnergetico;
	}

	public int getPeso() {
		return peso;
	}
	
	//Metodos setters de todos los atributos	
	
	public void setTipoElectro (int tipoElectro) {
		this.tipoElectro = tipoElectro;
	}
	
	public void setPrecioBase(int precioBase) {
		this.precioBase = precioBase;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public void setConsumoEnergetico(char consumoEnergetico) {
		this.consumoEnergetico = consumoEnergetico;
	}

	public void setPeso(int peso) {
		this.peso = peso;
	}
	
		
/*Metodo consumo energetico: comprueba que la letra es correcta,
sino es correcta usara la letra por defecto. se invocará al crear el objeto y no sera visible */
	public char consumoEnergetico(char consumoEnergetico) {
		if (consumoEnergetico == 'A' || consumoEnergetico == 'a' || consumoEnergetico == 'B' || consumoEnergetico == 'b' || consumoEnergetico == 'C' || consumoEnergetico == 'c' || consumoEnergetico == 'D' || consumoEnergetico == 'd' || consumoEnergetico == 'E' || consumoEnergetico == 'e' || consumoEnergetico == 'F' || consumoEnergetico == 'f') {
			this.consumoEnergetico = consumoEnergetico;
						
		}else
			this.consumoEnergetico = 'F';
		
		return consumoEnergetico;
	}


	/* Metodo comprobarColor: comprueba que el color es correcto, sino lo es, 
usa el color por defecto. Se invocará al crear el objeto y no será visible.
Colores: blanco,negro,rojo,azul y gris. No importa si el nombre está en mayúsculas o minúsculas. */
	public String comprobarColor (String color) {
		if (color == "blanco" || color == "Blanco" || color == "negro" || color == "Negro" || color == "rojo" || color == "Rojo" || color == "azul" || color == "Azul" || color == "gris" || color == "Gris") {
			this.color = color;
						
		}else
			this.color = "blanco";
		
		return color;
		
	}
	
// Metodo precio final. Según el consumo energético, aumentara su precio, y según su tamaño también.
	public int precioFinal(char consumoEnergetico, int peso) {
	
		int valor1 = 0;
		int valor2 = 0;
		int precio = 0;
		
		if (consumoEnergetico == 'A' || consumoEnergetico == 'a') {
			valor1 = 100;
		}else if (consumoEnergetico == 'B' || consumoEnergetico == 'b') {
			valor1 = 80;
		}else if (consumoEnergetico == 'C' || consumoEnergetico == 'c') {
			valor1 = 60; 
		}else if (consumoEnergetico == 'D' || consumoEnergetico == 'd') {
			valor1 = 50; 
		}else if (consumoEnergetico == 'E' || consumoEnergetico == 'e') {
			valor1 = 30;
		}else if (consumoEnergetico == 'F' || consumoEnergetico == 'f') {
			valor1 = 10;
		}
		
		if(peso >= 0 && peso <= 19) {
			valor2 = 10;
		}else if (peso >= 20 && peso <= 49) {
			valor2 = 50;
		}else if (peso >= 50 && peso <= 79) {
			valor2 = 80;
		}else if (peso >= 80) {
			valor2 = 100;
		}
		precio = valor1 + valor2;
		return precio;
	}

	

//tostring
	@Override
	public String toString() {
		return "Electrodomestico [tipoElectro=" + tipoElectro + ", precioBase=" + precioBase + ", color=" + color
				+ ", consumoEnergetico=" + consumoEnergetico + ", peso=" + peso + "]";
	}
	
}
