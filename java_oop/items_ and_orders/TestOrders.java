import java.util.ArrayList;
public class TestOrders {
    public static void main(String[] args) {
    
        // Menu items
        Item item1 = new Item();
        Item item2 = new Item();
        Item item3 = new Item();
        Item item4 = new Item();

        item1.name = "Drip Coffee";
        item1.price = 15;

        item2.name = "Capuccino";
        item2.price = 17;

        item3.name = "Mocha";
        item3.price = 10;

        item4.name = "Latte";
        item4.price = 20;

    
        // Order variables -- 
    Order order1 = new Order();
    Order order2 = new Order(); 
    Order order3 = new Order();
    Order order4 = new Order();
    
    order1.name = "Cindhuri";
    order2.name = "Jimmy";
    order3.name = "Sam";
    order4.name = "Noah";

    
        // Application Simulations
        // order 1 
       
        System.out.printf("Name: %s\n", order1.name);
        System.out.printf("Name: %s\n", order1.total);
        order1.ready = true;
        System.out.printf("Name: %s\n", order1.ready);

        // order 2 
        order2.items.add(item1);
        order2.total = order2.total+item1.price;
        order2.ready = true;
        System.out.printf("Name: %s\n", order2.name);

        System.out.printf("Total: %s\n", order2.total);
        System.out.printf("Ready: %s\n", order1.ready);


        // order 3
        order3.items.add(item2);
        order3.total = order3.total+ item2.price;
        order3.items.add(item4);
        order3.total = order3.total+ 2*(item4.price);
        order3.ready=true;
        System.out.printf("Name: %s\n", order3.name);
        System.out.printf("Total: %s\n", order3.total);
        System.out.printf("Total: %s\n", order3.ready);


        // order 4
        order4.items.add(item4);
        order4.total = order4.total + item4.price;
        System.out.printf("Name: %s\n", order4.name);
        System.out.printf("Total: %s\n", order4.total);

    }
}
