import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class CafeUtil{
    int getStreakGoal(int numWeeks){
        int sum = 0;
        for (int i =1; i <= numWeeks; i++){
            
            sum = sum+i;
           
        }
         return sum;
    }


    double getOrderTotal(double[] prices){
        double total = 0;
        for (int i=0; i <prices.length; i++){
        
        total = total + prices[i];
        }
        return total;
    }

    void displayMenu(ArrayList<String> menuItems){
        for (int i =0; i < menuItems.size(); i++){
            String item = menuItems.get(i);
            System.out.println(i + " " + item);
        }
    }


    
    void addCustomer(ArrayList<String> customersList){
        System.out.println("Enter your name:");
        String userName = System.console().readLine();
        System.out.println("Hello" + " " + userName);
        System.out.println("There are" + " " + customersList.size()+" " +"people in front of you!");

        customersList.add(userName);
        System.out.println(customersList);
        

    }

}