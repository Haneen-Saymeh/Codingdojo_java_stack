
public class Gorilla extends Mammal{
	
	public void throwSomething() {
		this.energyLevel = this.energyLevel-5;
		System.out.println("The Gorilla has thrown something!");
		
	}
	
	public void eatBanana() {
		this.energyLevel= this.energyLevel+10;
		System.out.println("The Gorilla is satisfied!");
	}
	
	public void climb() {
		this.energyLevel= this.energyLevel-10;
		System.out.println("The Gorilla has climbed a tree!");
	}

}
