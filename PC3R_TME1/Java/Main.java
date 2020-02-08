
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
		while (Compteur.getValue()>0) {
			try {
				synchronized(c){
					c.wait();
				}
				
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		System.out.println("fin");
		
	}
	
	
}
