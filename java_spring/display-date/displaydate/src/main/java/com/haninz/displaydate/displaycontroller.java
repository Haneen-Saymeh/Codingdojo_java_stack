package com.haninz.displaydate;

import java.time.LocalTime;
import java.time.LocalDate;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class displaycontroller {
	@RequestMapping("/")
    public String index() {
        
        return "index.jsp";
    }
	
	@RequestMapping("/date")
    public String index2(Model model) {
		LocalDate today = LocalDate.now();	//23-Feb-022
	    
		int day = today.getDayOfMonth();	//23
		int month = today.getMonthValue(); 	//2
		int year = today.getYear();
		
		model.addAttribute("dayof", day);
		model.addAttribute("monthof", month);
		model.addAttribute("yearof", year);
		
        
        return "date.jsp";
    }
	
	@RequestMapping("/time")
    public String index3(Model model) {
		LocalTime time = LocalTime.now();
		model.addAttribute("timeof", time);
		
        
        return "time.jsp";
    }
	
	

}
