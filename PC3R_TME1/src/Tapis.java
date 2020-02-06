import java.util.ArrayList;
import java.util.List;

public class Tapis {
	private List<Paquet> file;
	private int capacite;
	
	public Tapis (int cap) {
		this.capacite = cap;
		this.file = new ArrayList<Paquet>();
	}
	
	public int getCapacite() {
		return this.capacite;
	}
	
	public List<Paquet> getFile(){
		return this.file;
	}
	
	public void enfiler(Paquet p) throws InterruptedException {
		while (this.file.size() + 1 > this.capacite) {
//			System.out.println("plein");
			this.wait();
		}
		this.file.add(p);
		this.notifyAll();
	}
	
	public Paquet defile() throws InterruptedException {
		while(this.file.isEmpty()) {
//			System.out.println("vide");
			this.wait();
		}
		Paquet ret = this.file.get(0);
		this.file.remove(0);
		this.notifyAll();
		return ret;
	}
	
}
