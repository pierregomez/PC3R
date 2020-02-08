
public class Main {
	public static void main(String...args) {
		
		Compteur c = new Compteur(30);
		Tapis t = new Tapis(6);
		Thread p1 = new Thread(new Producteur(t, "Pomme", 10));
		Thread p2 = new Thread(new Producteur(t, "Tomate", 10));
		Thread p3 = new Thread(new Producteur(t, "Banane", 10));
		Thread c1 = new Thread(new Consommateur(t, c));
		Thread c2 = new Thread(new Consommateur(t, c));
		Thread c3 = new Thread(new Consommateur(t, c));
		p1.start(); p2.start(); p3.start(); c1.start(); c2.start(); c3.start();
		System.out.println("----le main veut le lock");
		synchronized(c){
			System.out.println("----le main a eu le lock");
			while (Compteur.getValue()!=0) {
				try {
						System.out.println("-----main s'endort car les conso ne sont pas terminées");
						c.wait();
						System.out.println("-----main se reveille");
					}
					
				catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		}
		
		System.out.println("fin");
		
	}
	
	
}
