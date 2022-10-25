import java.util.HashMap;
import java.util.Set;

// creating hashmap and adding its keys and values

public class Hashmatique{
    public static void main(String[] args){
        HashMap <String,String>  trackList = new HashMap<String, String>();
        trackList.put("Track1", "Lyrics1");
        trackList.put("Track2", "Lyrics2");
        trackList.put("Track3", "Lyrics3");
        trackList.put("Track4", "Lyrics4");

    // printing the value of specific key

    System.out.println(trackList.get("Track3"));
    

// printing all keys and their associated values

    Set<String> keys= trackList.keySet();
    for (String key : keys){

        System.out.println(key + ":" + trackList.get(key));
        
            
    }




    }
}