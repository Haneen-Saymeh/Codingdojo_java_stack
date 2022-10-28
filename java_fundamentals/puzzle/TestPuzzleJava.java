import java.util.ArrayList;
import java.util.Random;
public class TestPuzzleJava {
    
	public static void main(String[] args) {
		PuzzleJava generator = new PuzzleJava();
		ArrayList<Integer> randomRolls = generator.getTenRolls();

    /* ============ Testing getting random 10 numbers ============= */
		System.out.println(randomRolls);

    
    /* ============ Testing getting a random letter from array of alphabet============ */
    System.out.println(generator.getRandomLetter());


    /* ============ Testing generating a password of 8 letter from previouse method ============= */
    System.out.println(generator.generatePassword());


    /* ============ Testing generating a password of input number  ============= */
    System.out.println(generator.getNewPasswordSet(5));
    	
    	
	}
}
