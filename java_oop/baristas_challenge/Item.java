public class Item{
    private String name;
    private double price;

    public  Item(){
       
    }

    
    public  Item(String itemName, double itemPrice){
        this.name = itemName;
        this.price = itemPrice;

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

}