
public class Bat extends Specimen {
	
	public void fly() {
		this.energyLevel= this.energyLevel-50;
		System.out.println("booof");
	}
	
	public void eatHumans() {
		this.energyLevel= this.energyLevel+25;
		System.out.println("So-well, never mind!");
		
	}
	
	public void attackTown() {
		this.energyLevel= this.energyLevel-100;
		System.out.println("craaash!");
		
	}

}
