public class Consommateur implements Runnable{
	private static int instanceCpt = 0;
	private int id;
	private Tapis tapis;
	private Compteur cpt;
	
	public Consommateur(Tapis tapis, Compteur cpt) {
		this.instanceCpt++;
		this.id = instanceCpt;
		this.tapis = tapis;
		this.cpt = cpt;
	}

	@Override
	public synchronized void run() {
		synchronized(cpt){
				while(cpt.getValue() > 0) {
					try {
						Paquet p = tapis.defiler();
						System.out.println("Conso"+id+ " mange " + p.getContent() + "\t--- reste "+ (cpt.getValue()-1));
						cpt.decremente();
					} catch (InterruptedException e) {
						e.printStackTrace();
				}
			}
		}
		
	}
	
}