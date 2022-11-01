package com.haninz.hopper;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class recieptcontroller {
	
    @RequestMapping("/")
    public String index(Model model) {
        
        String name = "Grace Hopper";
        String itemName = "Copper wire";
        double price = 5.25;
        String description = "Metal strips, also an illustration of nanoseconds.";
        String vendor = "Little Things Corner Store";
    
        model.addAttribute("val1", name);
        model.addAttribute("val2", itemName);
        model.addAttribute("val3", price);
        model.addAttribute("val4", description);
        model.addAttribute("val5", vendor);
    
        return "index.jsp";
    }
    
    


}
