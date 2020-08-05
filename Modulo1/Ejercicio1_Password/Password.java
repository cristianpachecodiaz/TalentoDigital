package Ejercicio1_Password;
import java.util.Random;

public class Password 
{
	private int longitud;
	private String contrasena;
	
	//getter y Setter 
	
	public String getContrasena() 
	{
		return contrasena;
	}
	
	public int getLongitud() 
	{
		return longitud;
	}

	public void setLongitud(int longitud)
	{
		this.longitud = longitud;
	}

	//Constructores
	
	public Password()
	{
		longitud = 0;
		contrasena = "";
	}
	
	public Password(int longitud) 
	{
		this.longitud = longitud;
		this.contrasena = this.generarPassword();
		
	}

		
	//Métodos esFuerte y generarPassword
		
	public boolean esFuerte() 
	{
		int contadorMayusculas=0, contadorMinusculas=0, contadorNumeros=0;
	        for(int i=0; i<contrasena.length(); i++) 
	        {           
	            //Guaradamos el caracter en que esté en la posición (i) dentro de la variable caracter:
	            char caracter=contrasena.charAt(i);
	            //El caracter es convertido a su equivalente en la tabla ascii y guardado en la variable
	            int ascii=(int)caracter;   
	           
	            if(ascii>=65 && ascii<=90)
	            {            //Contador de mayusculas
	                contadorMayusculas++;
	            }else if(ascii>=97 && ascii<=122)
	            {    //Contador de minusculas
	                contadorMinusculas++;
	            }else if(ascii>=48 && ascii<=57)
	            {
	                contadorNumeros++;
	            }
	        }
	        //Return:
	        if(contadorMayusculas>=2 && contadorMinusculas>=1 && contadorNumeros>=5)
	        {   
	            //2 mayúsculas, mas de 1 minúscula y mas de 5 números
	            return true;
	        }else
	        {
	            return false;
	        }
	    }
		
	
	public String generarPassword() 
	{
		int largo = 8;
		String pass = "";
		Random aleatorio = new Random();
		final char[] combinaciones =
            {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P',
                    'Q','R','S','T','U','V','W','X', 'Y','Z',
                    'a','b','c','d','e','f','g','e','h','i','j','l','k','m',
                    'n','o','p','r','s','t','u','v','w','x','y','z',
                    '1','2','3','4','5','6','7','8','9','0',
                    '@','#','!','$','€','&','[',']'};
		
				
		
		for (int i = 0; i < largo; i++)
		{
			
			pass += combinaciones[aleatorio.nextInt(combinaciones.length)];
		
		}
		
			return pass;
	}
	
}