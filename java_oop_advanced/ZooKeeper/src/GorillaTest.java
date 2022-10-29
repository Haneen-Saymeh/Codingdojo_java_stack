
public class GorillaTest {

	public static void main(String[] args) {
		Gorilla gorilla1 = new Gorilla();
//		Checking gorilla initial energy
		System.out.println(gorilla1.displayEnergy());
		
//		Testing gorilla throwing sth three times!
		for(int i =1; i<=3; i++){
		gorilla1.throwSomething();
		}
		System.out.println(gorilla1.displayEnergy());
		
//		Testing gorilla eating Banana twice
		for (int i =1; i<=2;i++) {
			gorilla1.eatBanana();
		}
		System.out.println(gorilla1.displayEnergy());
		
		
		gorilla1.climb();
		System.out.println(gorilla1.displayEnergy());
		

		
	}
}
