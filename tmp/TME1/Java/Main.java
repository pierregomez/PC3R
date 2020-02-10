public class Main{
	public static void main(String...args) {
		Tapis tapis = new Tapis(10);
		Compteur cpt = new Compteur(30);
		
		Thread p1 = new Thread(new Producteur("Tomate", 10, tapis));
		Thread p2 = new Thread(new Producteur("Pomme", 10, tapis));
		Thread p3 = new Thread(new Producteur("Banane", 10, tapis));
		
		Thread c1 = new Thread(new Consommateur(tapis, cpt));
		Thread c2 = new Thread(new Consommateur(tapis, cpt));
		Thread c3 = new Thread(new Consommateur(tapis, cpt));
		
		p1.start();p2.start();p3.start();c1.start();c2.start();c3.start();
		synchronized(cpt) {
			while(cpt.getValue()>0) {
				try {
					System.out.println("main attend la fin des consommateurs");
					cpt.wait();
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
			
		}
		System.out.println("fin");
		
	}
}