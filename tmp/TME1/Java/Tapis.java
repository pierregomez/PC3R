import java.util.ArrayList;
import java.util.List;

public class Tapis{
	private int capacite;
	private List<Paquet> tapis;
	
	public Tapis(int capacite) {
		this.capacite  = capacite;
		tapis = new ArrayList<Paquet>();
	}
	
	public synchronized void enfile(Paquet p) throws InterruptedException {
		while(tapis.size() + 1 > capacite) {
			this.wait();
		}
		tapis.add(p);
		this.notifyAll();
	}
	
	public synchronized Paquet defiler() throws InterruptedException {
		while(tapis.isEmpty()) {
			this.wait();
		}
		Paquet tmp = tapis.get(0);
		tapis.remove(0);
		this.notifyAll();
		return tmp;
	}
}