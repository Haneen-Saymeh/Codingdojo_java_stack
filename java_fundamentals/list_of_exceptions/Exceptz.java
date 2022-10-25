import java.util.ArrayList;

public class Exceptz{
    public static void main(String[] args){
        ArrayList<Object> mylist = new ArrayList<Object>();
        mylist.add(15);
        mylist.add("Haninz");
        mylist.add("你好");
        mylist.add(5);

    for (int i = 0; i < mylist.size(); i++){
        try {
             Integer CastedValue = (Integer) mylist.get(i);
              System.out.println(CastedValue);
        }

        catch (ClassCastException han){
            System.out.println("Error on index "+ i);
        }
       
    }

    }
}