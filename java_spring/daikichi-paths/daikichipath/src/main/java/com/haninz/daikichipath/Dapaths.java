package com.haninz.daikichipath;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/daikichi")
public class Dapaths {
	@RequestMapping("/travel/{city}")
	public String path1(@PathVariable("city") String city) {
		return "Congrats, you'll soon travel to " +city;
		
	}
	
	
	
	
	@RequestMapping("/lotto/{number}")
	public String path2(@PathVariable("number") Integer num) {
		if (num %2 == 0) {
			return "You will take a grand journey in the near future, but be weary of tempting offers'";
		}
		
		else {
		
		return "You have enjoyed the fruits of your labor but now is a great time to spend time with family and friends.";
		}
		
	}

}
