package sistemaImc;

public class Persona {
	
	//Atributos
	String rut;
	String nombre = "";
	int edad = 0;
	char sexo =' ';
	double peso=0.0;
	double altura=0.0; 
	
	
	//tostring
	@Override
	public String toString() {
		return "Persona [rut=" + rut + ", nombre=" + nombre + ", edad=" + edad + ", sexo=" + sexo + ", peso=" + peso
				+ ", altura=" + altura + "]";
	}
	
	//setters y Getters
	public String getRut() {
		return rut;
	}

	public void setRut(String rut) {
		this.rut = rut;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public char getSexo() {
		return sexo;
	}

	public void setSexo(char sexo) {
		this.sexo = sexo;
	}

	public double getPeso() {
		return peso;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}

	public double getAltura() {
		return altura;
	}

	public void setAltura(double altura) {
		this.altura = altura;
	}
	
	//constructores
	
	public Persona(String rut, String nombre, int edad, char sexo) {
		super();
		this.rut = rut;
		this.nombre = nombre;
		this.edad = edad;
		this.sexo = sexo;
	}

	
	public Persona() {
		super();
	}
	
	public Persona(String rut, String nombre, int edad, char sexo, double peso, double altura) {
		super();
		this.rut = rut;
		this.nombre = nombre;
		this.edad = edad;
		this.sexo = sexo;
		this.peso = peso;
		this.altura = altura;
	}
	
	
	public double imc() {
		double imc = peso/(altura*altura);
		return imc;
	}
	
	public int logicaImc() {
		int valor = 0;
		
		if(imc()<20.0) {
			valor = -1;
			
		   }else if (imc()>=20.0 && imc()<=25.0) {
			valor = 0;
			
		   }else if (imc()>25.0) {
			valor = 1;
		    }
		return valor;
				
	}
	
	public boolean esMayorDeEdad() {
		if (edad >=18) {
			return true;
		}else
		return false;
	
	}
	
	public String comprobarSexo() {       //H: Hombre ; M: Mujer
		String valor = "";
		if (sexo=='M' || sexo=='H') {  
			valor ="correcto";
		} else
			valor= "incorrecto";
			sexo = 'H';
		
		return valor;
	}
	//comprobarSexo(charsexo):comprueba que el sexo introducido es correcto.
	//Si no es correcto, será H. No será visible al exterior.





}




