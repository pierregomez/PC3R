public class Compteur{

	private static int cpt;
	
	public Compteur (int c) {
		cpt = c;
	}
	
	public synchronized void decremente() {
		cpt --;
	}
	
	public static int getValue() {
		return cpt;
	}
	
}