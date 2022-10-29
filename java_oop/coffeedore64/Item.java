public class Item{
    private int index;
    private String name;
    private double price;
    

    public  Item(){
       
    }

    
public  Item(int index, String name, double price){
        this.index= index;
        this.name = name;
        this.price = price;
        

    }

public String getNameOfItem(){
    return this.name;
    }

public void setNameofItem(String itemName){
    this.name = itemName;

}

public double getPriceofItem(){
    return this.price;
}

public void setPriceOfItem(double itemPrice){
    this.price = itemPrice;
}

public int getItemIndex(){
    return this.index;
}

public void setItemIndex(int index){
    this.index= index;

}

}