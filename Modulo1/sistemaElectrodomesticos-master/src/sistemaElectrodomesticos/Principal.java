package sistemaElectrodomesticos;

import java.util.ArrayList;

public class Principal {
	
	static ArrayList<Electrodomestico> electrodomestico = new ArrayList<Electrodomestico>();
	Lavadora lavadora = new Lavadora();
	Television televisor = new Television();
	static int precio = 0;
	
	
	public static void cargarDatos() {
		
		//variables electro
		int tipoElectro = 0;
		int precioBase = 100000;
		String color = "blanco";
		char consumoEnergetico = 'F';
		int peso = 5;
		
		//variables lavadora
		int carga = 0;
		
		//variables television
		
		int resolucion = 50;
		boolean sintonizadorTDT = false;
		
	
		Electrodomestico electrodomestico1 = new Electrodomestico(tipoElectro, precioBase,color,consumoEnergetico,peso);
		electrodomestico1.setPrecioBase(0);
		electrodomestico1.setPrecioBase(50000);
		electrodomestico1.setColor("negro");
		electrodomestico1.setConsumoEnergetico('A');
		electrodomestico1.setPeso(10);
					
		Lavadora lavadora1 = new Lavadora (tipoElectro,carga,precioBase,color,consumoEnergetico,peso);
		lavadora1.setTipoElectro(1);
		lavadora1.setCarga(30);
		lavadora1.setPrecioBase(30000);
		lavadora1.setColor("azul");
		lavadora1.setConsumoEnergetico('B');
		lavadora1.setPeso(10);
		
		Lavadora lavadora2 = new Lavadora (tipoElectro,carga,precioBase,color,consumoEnergetico,peso);
		lavadora2.setTipoElectro(1);
		lavadora2.setCarga(35);
		lavadora2.setPrecioBase(40000);
		lavadora2.setColor("gris");
		lavadora2.setConsumoEnergetico('B');
		lavadora2.setPeso(15);
		
		Lavadora lavadora3 = new Lavadora (tipoElectro,carga,precioBase,color,consumoEnergetico,peso);
		lavadora3.setTipoElectro(1);
		lavadora3.setCarga(40);
		lavadora3.setPrecioBase(45000);
		lavadora3.setColor("negro");
		lavadora3.setConsumoEnergetico('C');
		lavadora3.setPeso(20);
		
		Lavadora lavadora4 = new Lavadora (tipoElectro,carga,precioBase,color,consumoEnergetico,peso);
		lavadora4.setTipoElectro(1);
		lavadora4.setCarga(45);
		lavadora4.setPrecioBase(50000);
		lavadora4.setColor("blanco");
		lavadora4.setConsumoEnergetico('D');
		lavadora4.setPeso(25);		
		
		Television television1 = new Television (tipoElectro,resolucion,sintonizadorTDT,precioBase,color,consumoEnergetico,peso);
		television1.setTipoElectro(2);
		television1.setResolucion(50);
		television1.setSintonizadorTDT(true);
		television1.setPrecioBase(200000);
		television1.setColor("blanco");
		television1.setConsumoEnergetico('A');
		television1.setPeso(15);
		
		Television television2 = new Television (tipoElectro,resolucion,sintonizadorTDT,precioBase,color,consumoEnergetico,peso);
		television2.setTipoElectro(2);
		television2.setResolucion(50);
		television2.setSintonizadorTDT(true);
		television2.setPrecioBase(200000);
		television2.setColor("blanco");
		television2.setConsumoEnergetico('B');
		television2.setPeso(20);
		
		Television television3 = new Television (tipoElectro,resolucion,sintonizadorTDT,precioBase,color,consumoEnergetico,peso);
		television2.setTipoElectro(2);
		television3.setResolucion(50);
		television3.setSintonizadorTDT(true);
		television3.setPrecioBase(200000);
		television3.setColor("blanco");
		television3.setConsumoEnergetico('C');
		television3.setPeso(25);
		
		Television television4 = new Television (tipoElectro,resolucion,sintonizadorTDT,precioBase,color,consumoEnergetico,peso);
		television4.setTipoElectro(2);
		television4.setResolucion(60);
		television4.setSintonizadorTDT(true);
		television4.setPrecioBase(300000);
		television4.setColor("rojo");
		television4.setConsumoEnergetico('D');
		television4.setPeso(30);
		
		Television television5 = new Television (tipoElectro,resolucion,sintonizadorTDT,precioBase,color,consumoEnergetico,peso);
		television5.setTipoElectro(2);
		television5.setResolucion(65);
		television5.setSintonizadorTDT(true);
		television5.setPrecioBase(350000);
		television5.setColor("blanco");
		television5.setConsumoEnergetico('E');
		television5.setPeso(35);
		
		electrodomestico.add(electrodomestico1);
		electrodomestico.add(lavadora1);
		electrodomestico.add(lavadora2);
		electrodomestico.add(lavadora3);
		electrodomestico.add(lavadora4);
		electrodomestico.add(television1);
		electrodomestico.add(television2);
		electrodomestico.add(television3);
		electrodomestico.add(television4);
		electrodomestico.add(television5);
		

		// Precio Final
		
		System.out.println("El arreglo de objetos de electrodomésticos es el siguiente:");
		System.out.println("(tipoElectro = 0 es Electrodomestico, tipoElectro = 1 es Lavadora, tipoElectro = 2 es Televisión)");
		System.out.println("-----------------------------------------------------------");
			for (int i=0; i< electrodomestico.size();i++) {
			
			System.out.println(electrodomestico.get(i).toString());
		}
		
		for(int i=0; i<electrodomestico.size();i++) {
		
			precio = electrodomestico.get(i).precioFinal(consumoEnergetico, peso) + precio ;
		}
		
		System.out.println("El resultado final es el siguiente:");
		System.out.println("-----------------------------------");
		System.out.println("Precio final de todos los electrodomesticos( tipo: electrodomestico, lavadora y televisión):" +precio);
		
		for(int i=0; i<electrodomestico.size();i++) {
			
			if (electrodomestico.get(i).getTipoElectro()==1){
			
			precio = electrodomestico.get(i).precioFinal(consumoEnergetico, peso) + precio ;
			}
		}
		System.out.println("Precio final de todos los electrodomesticos Lavadoras:" +precio);
		
		
		for(int i=0; i<electrodomestico.size();i++) {
			
			if (electrodomestico.get(i).getTipoElectro()==2){
			
			precio = electrodomestico.get(i).precioFinal(consumoEnergetico, peso) + precio ;
			}
		}
		System.out.println("Precio final de todos los electrodomesticos Televisores:" +precio);
		
		
	}
		
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		cargarDatos();
	}
}
