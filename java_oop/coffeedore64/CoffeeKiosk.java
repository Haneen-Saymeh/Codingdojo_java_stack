import java.util.ArrayList;

public class CoffeeKiosk{
    private ArrayList<Item> menu = new ArrayList<Item>();
    private  ArrayList<Order> orders = new ArrayList<Order>();


public CoffeeKiosk(){
    ArrayList<Item> this.menu = new ArrayList<Item>();
    ArrayList<Order> this.orders = new ArrayList<Order>();

}

public void addItemToMenu(Item newitem){
    Item newitem = new Item();
    menu.add(newitem);
}

}