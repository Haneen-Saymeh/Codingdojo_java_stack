import java.util.ArrayList;


public class Order{
    private String name;
   
    private boolean ready;
    private ArrayList<Item> items = new ArrayList<Item>();

public Order(){
    this.name = "Guest";
    ArrayList<Item> items = new ArrayList<Item>();

}

public Order(String name){
    this.name = name;
}

public String getOrderName(){
    return this.name;
}

public void setOrderName (String name){
    this.name = name;
}

public boolean getIsOrderReady(){
    return this.ready;
}

public void setIsOrderReady(boolean ready){
    this.ready= ready;
}


public ArrayList<Item> addItem(Item item){
    this.items.add(item);
    return this.items;
    
}

public void getOrderItems(){
    
    for (Item item : this.items){
    System.out.println(item.getNameOfItem()+ ":" + item.getPriceofItem());
}   
}




public void setStatusMessage(boolean ready){
    this.ready=ready;
    
}

public void getStatusMessage(){
    if (this.ready == false){
         System.out.println("Thank you for waiting, your order will be ready soon!");
    }
   
    else {
        System.out.println("Your order is here!");
    }
    
}

public double getOrderTotal(){
    double total = 0;
    for (Item item : this.items){
        total= total+ item.getPriceofItem();
    }
    return total;
}

public void display(){

    System.out.println("costumer name:" + this.name);
    for (Item item: this.items){
    System.out.println( item.getNameOfItem()+ " "+ item.getPriceofItem());
    

    }
 
    System.out.println("total:" + this.getOrderTotal());

}

}