
public class Consommateur implements Runnable{
	
	private static int instanceCpt = 0;
	private int id = 0;
	private Tapis file;
	private Compteur c;
	
	public Consommateur(Tapis t, Compteur c) {
		instanceCpt++;
		this.id = instanceCpt;
		this.file = t;
		this.c = c;
		
	}

	@Override
	public void run() {
		while(Compteur.getValue() > 0) {
			try {
				synchronized(file) {
					//TODO proteger l'utilisation du compteur
					c.decremente();
					System.out.println("Conso"+ id + " mange " + this.file.defile().getContent() + " \t reste " + Compteur.getValue());
					
				}
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		synchronized(c) {
			c.notifyAll();
		}
		
		
	}

}
