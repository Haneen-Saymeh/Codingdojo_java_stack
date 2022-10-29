
public class BatTest {

	public static void main(String[] args) {
		
		Bat bat1 = new Bat();
//		Checking Bat initial energy
		System.out.println(bat1.displayEnergy());
		
//		Testing bat attacking 3 towns
		
		for(int i = 1; i<=3; i++) {
			bat1.attackTown();
			
		}
		System.out.println(bat1.displayEnergy());
		
//		Testing bat eating 2 humans
		
		for(int i = 1; i<=2; i++) {
			bat1.eatHumans();
			
		}
		System.out.println(bat1.displayEnergy());
		
//		Testing bat flying twice
		
		for(int i = 1; i<=2; i++) {
			bat1.fly();
			
		}
		System.out.println(bat1.displayEnergy());

	}

}
