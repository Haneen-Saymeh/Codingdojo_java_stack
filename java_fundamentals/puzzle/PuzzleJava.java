import java.util.ArrayList;
import java.util.Random;

public class PuzzleJava{

    public ArrayList<Integer> getTenRolls(){
        Random randMachine = new Random();
        ArrayList<Integer> rollArray = new ArrayList<Integer>();

        for (int i =1; i <= 10; i++){
            int randomRoll = randMachine.nextInt(21);
            rollArray.add(randomRoll);  
        }
    return rollArray;

    }

    public char getRandomLetter(){
        Random randMachine = new Random();
        char [] randomLetters = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L','M', 'N', 'O', 'P', 'Q',  'R','S','T','U','V','W','X','Y','Z'};
        
            int letterIndex = randMachine.nextInt(randomLetters.length);
           return randomLetters[letterIndex];
        }

    public String generatePassword() {
        String randString = " ";
        for (int i =1; i <=8; i++){
            randString= randString+getRandomLetter();
           
        }
        return (randString);
    } 

    public String getNewPasswordSet(int n){
        String newPassword = " ";
        for (int i = 1; i <= n; i++){
            newPassword= newPassword+getRandomLetter();
        }

        return newPassword;
    }
       
    










}