import java.util.Date;
public class AlfredQuotes {
    
    public String basicGreeting() {
        // You do not need to code here, this is an example method
        return "Hello, lovely to see you. How are you?";
    }
    
    public String guestGreeting(String name) {
        
        return "Hello" + " " + name + " " + "nice to see you!";
    }
    
    public String dateAnnouncement() {
        Date datenow = new Date();
        return "It's currently:" + datenow;
    }
    
    public String respondBeforeAlexis(String conversation) {
        if (conversation.contains("Alexis")){
            return "Right away, sir.";

        }

        else if (conversation.contains("Alfred")){
            return "At your service.";

        }

        else {
            return "Right. And with that I shall retire." ;
        }
       
    
       
    }
    
	
}

