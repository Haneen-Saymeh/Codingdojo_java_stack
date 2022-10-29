import java.util.ArrayList;

public class CoffeeKiosk{
    private ArrayList<Item> menu;
    private  ArrayList<Order> orders;


public CoffeeKiosk(){
    this.menu = new ArrayList<Item>();
    this.orders = new ArrayList<Order>();

}

public void addItemToMenu(int index, String name, double price){
    Item newitem = new Item(index, name, price);
    
    this.menu.add(newitem);
    System.out.println(this.menu);
}

// public void addItemToMenu(Item newItem){
   
//     menu.add(newitem);
// }

public void displayMenu(){
    for (Item item: this.menu){
       System.out.println( item.getItemIndex() + " " + item.getNameOfItem()+ " -- $ "+ item.getPriceofItem());

    }
    }

public void newOrder() {
        
    	
        System.out.println("Please enter customer name for new order:");
        String name = System.console().readLine();
    
    
        Order newOrder = new Order(name);
        displayMenu();
        
    
        System.out.println("Please enter a menu item index or q to quit:");
        String itemNumber = System.console().readLine();
        
       
        while(!itemNumber.equals("q")) {
            
            int itemIndex = Integer.parseInt(itemNumber);
                    Item orderedItem = this.menu.get(itemIndex);
                    newOrder.addItem(orderedItem);
                    System.out.println("Please enter a menu item index or q to quit:");
        itemNumber = System.console().readLine();
        }
        newOrder.display();
        
    }


}