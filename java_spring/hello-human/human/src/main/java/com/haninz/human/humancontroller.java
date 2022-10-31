package com.haninz.human;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class humancontroller {
	
	@RequestMapping("/")
	public String hello2(@RequestParam(value="name",required=false) String haninz, @RequestParam(value="last",required=false) String sol) {
		
		if (haninz == null ) {
			return "Hello Human!";
		}
		else if (sol == null) {
			 return "Hello " + haninz;
		}
		else {
			
			
	        return "Hello " + haninz +" " + sol;
		}
		
	}
	
	
}
