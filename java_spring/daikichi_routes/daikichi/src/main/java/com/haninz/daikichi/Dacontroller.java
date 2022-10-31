package com.haninz.daikichi;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/daikichi")
public class Dacontroller {
	@RequestMapping("")
    public String welcome() {
            return "Welcome!";
    }
    @RequestMapping("/today")
    public String luck() {
            return "Today you'll find luck!";
    }
    
    @RequestMapping("/tomorrow")
    public String tom() {
    	return "Be open to new ideas!";
    }
	

}
