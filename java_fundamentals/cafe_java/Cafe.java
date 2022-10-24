public class Cafe{
    public static void main(String[] args) {
        // APP VARIABLES
        // Lines of text that will appear in the app. 
        String generalGreeting = "Welcome to Cafe Java, ";
        String pendingMessage = ", your order will be ready shortly";
        String readyMessage = ", your order is ready";
        String displayTotalMessage = "Your total is $";
        
        
        // Menu variables (add yours below)
        double mochaPrice = 3.5;
        double dripCoffee =7.5;
        double cappacunio= 10.99;
        double latte = 15;
    
        // Customer name variables (add yours below)
        String customer1 = "Cindhuri";
        String customer2 = "Sam";
        String customer3 = "Noah";
        String customer4 = "Jimmy";
        String customer5 = "Haninz";
    
        // Order completions (add yours below)
        boolean isReadyOrder1 = false;
        boolean isReadyOrder2 = false;
        boolean isReadyOrder3 = true;
        boolean isReadyOrder4 = false;
        boolean isReadyOrder5 = true;
    
        // Welcoming Cindhuri, based on her order the following the message will be displayed:
        System.out.println(generalGreeting + customer1);
        if (isReadyOrder1 == false) {
            System.out.println(customer1 + pendingMessage);

        }
        else{
            System.out.println(customer1 + readyMessage);
        }



        // Welcoming Noah, based on his order the following the message will be displayed:
        System.out.println(generalGreeting + customer3);
        if (isReadyOrder3== false) {
            System.out.println(customer3 + pendingMessage);
        }

        else{
            System.out.println(customer3 + readyMessage);
            System.out.println(displayTotalMessage + cappacunio);
        }

        // Welcoming Sam, diplaying the total amount of his order and the appropiate corresponding message:

        System.out.println(generalGreeting + customer2);
        System.out.println(displayTotalMessage + 2*latte);
        if (isReadyOrder2 == false){
            System.out.println(customer2 + pendingMessage);

        }

        else{
            System.out.println(customer2 + readyMessage);

        }

        // diplaying the new calculated  amount of Jimmy order :
        System.out.println(generalGreeting + customer4);
        System.out.println(displayTotalMessage + (latte-dripCoffee));


        
    }
        
        


}
