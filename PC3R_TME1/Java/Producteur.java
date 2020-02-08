
public class Producteur implements Runnable{

	private String produit;
	private int cible;
	private Tapis file;
	
	public Producteur(Tapis t, String produit, int objectif) {
		this.produit = produit;
		this.cible = objectif;
		this.file = t;
	}

	@Override
	public void run() {
		for(int i = 0; i<cible; i++) {
			try {
				synchronized(file) {
					System.out.println("Depos de " + this.produit + i);
					this.file.enfiler( new Paquet(this.produit + i));
				}
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		System.out.println("fin de production de "+ produit);

		
	}
}
