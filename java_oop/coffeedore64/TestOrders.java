public class TestOrders{
    public static void main(String [] args){
        



/* ============ App Test Cases ============= */

/* ============ Creating items ============= */
// item 1

Item item1 = new Item();
item1.setNameofItem("Latte");
item1.setPriceOfItem(20.5);
System.out.println(item1.getNameOfItem()+ ":" + item1.getPriceofItem());

// item 2

Item item2 = new Item();
item2.setNameofItem("Coffee");
item2.setPriceOfItem(15.5);
System.out.println(item2.getNameOfItem()+ ":" + item2.getPriceofItem());

// item 3 

Item item3 = new Item();
item3.setNameofItem("Capuccino");
item3.setPriceOfItem(17.5);
System.out.println(item3.getNameOfItem()+ ":" + item3.getPriceofItem());

// item 4 

Item item4 = new Item();
item4.setNameofItem("Hot Chocolate");
item4.setPriceOfItem(13.5);
System.out.println(item4.getNameOfItem()+ ":" + item4.getPriceofItem());


/* ============ Creating two orders from default constructor ============= */
        Order order1 = new Order();
        Order order2 = new Order();
        
        System.out.println(order1.getOrderName());
        System.out.println(order2.getOrderName());
/* ============ Creating two orders from overloaded constructor ============= */
    Order order3 = new Order("Haninz");
    Order order4 = new Order("Bruce");
    System.out.println(order3.getOrderName());
    System.out.println(order4.getOrderName());

/* ============ add items to orders ============= */
// order1
order1.addItem(item2);
order1.addItem(item4);
order1.getOrderItems();

// order2
order2.addItem(item3);
order2.addItem(item1);
order2.getOrderItems();

// order3
order3.addItem(item1);
order3.addItem(item2);
order3.getOrderItems();

// order4

order4.addItem(item4);
order4.getOrderItems();


/* ============ Oders status messages ============= */
order1.setStatusMessage(true);
order2.setStatusMessage(false);
order3.setStatusMessage(false);
order4.setStatusMessage(true);
order1.getStatusMessage();
order2.getStatusMessage();
order3.getStatusMessage();
order4.getStatusMessage();

/* ============ Oders total ============= */


System.out.println(order1.getOrderTotal());
System.out.println(order2.getOrderTotal());
System.out.println(order3.getOrderTotal());
System.out.println(order4.getOrderTotal());

/* ============ Oders info display  ============= */
order1.display();
order2.display();
order3.display();
order4.display();

/* ============ add items to menu============= */

CoffeeKiosk coffeek1 = new CoffeeKiosk();
coffeek1.addItemToMenu(0, "Banana",2.00);
coffeek1.addItemToMenu(1, "Coffee",1.50);
coffeek1.addItemToMenu(2, "latte",4.50);
coffeek1.displayMenu();
coffeek1.newOrder();







    



    }
}