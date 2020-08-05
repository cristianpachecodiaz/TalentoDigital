package NumerosPrimos;
public class NumerosPrimos {
public static boolean esPrimo(int n) 
{
	if(n < 2)
		{
			return false;
		}
	if(n == 2 || n == 3)
		{
			return true;
		}

	if(n%2 == 0 || n%3 == 0)
		{
			return false;
		}
	int sqrtN = (int)Math.sqrt(n)+1;
	for(int i = 6; i <= sqrtN; i += 6)
	{
		if(n%(i-1) == 0 || n%(i+1) == 0)
		{
			return false;
		}
	}
	return true;
	
}

public static void main(String[] args)
{
// todos los numeros primos mayores a dos son impares
int rango=100;
for(int i=1; i<rango; i++)
{
if(esPrimo(i))
	{
System.out.print(i + " es Primo");
System.out.println(i%2==1 ? " e Impar." : ".");
}
}
}
}