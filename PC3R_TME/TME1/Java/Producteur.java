public class Producteur implements Runnable{
	private String produit;
	private int cible;
	private Tapis tapis;
	
	public Producteur(String produit, int cible, Tapis tapis) {
		this.produit = produit;
		this.cible = cible;
		this.tapis = tapis;
		
	}

	@Override
	public void run() {
		for(int i = 0; i < this.cible; i++) {
			try {
				tapis.enfile(new Paquet(produit + i));
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		System.out.println("fin de production de "+ produit);
		
	}
	

}