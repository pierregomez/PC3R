public class Compteur{
	private int cpt;
	
	public Compteur(int c) {
		this.cpt  = c;
	}
	
	public int getValue() {
		return this.cpt;
	}
	
	public synchronized void decremente() {
		this.cpt--;
	}
	
}