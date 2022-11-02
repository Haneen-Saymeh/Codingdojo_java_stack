package com.haninz.ninjagold;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.ArrayList;
@Controller
public class NinjaController {
	@RequestMapping("/Gold")
	public String index1(HttpSession session) {
		if (session.getAttribute("gold")== null) {
			session.setAttribute("gold", 0);
		}
		if (session.getAttribute("activities")== null) {
			session.setAttribute("activities", new ArrayList<Object>());
		}
		
		return "index.jsp";
	}
@PostMapping("/process")	
public String index2(@RequestParam (value = "which_game") String game, HttpSession session){
	if (game.equals("farm")) {
		Random r = new Random();
		Integer random_farm = r.nextInt(10, 20 + 1);
		session.setAttribute("random_farm", random_farm);
		Integer total_gold = (Integer) session.getAttribute("gold");
		
		Integer all_gold= total_gold + random_farm;
		session.setAttribute("gold", all_gold);
		Date farm_date = new Date();
		session.setAttribute("farm_date", farm_date);
		String farm_text = "You entered a farm and earned" + random_farm+" "+ "gold" +" "+ farm_date;
		
		ArrayList<Object> activities = (ArrayList<Object>)session.getAttribute("activities");
		activities.add(farm_text);
		session.setAttribute("activities", activities);
		
		
		
			
	}
	
	else if (game.equals("cave")) {
		Random r = new Random();
		Integer random_cave = r.nextInt(10, 20 + 1);
		session.setAttribute("random_cave", random_cave);
		Integer total_gold = (Integer) session.getAttribute("gold");
		
		Integer all_gold= total_gold + random_cave;
		session.setAttribute("gold", all_gold);
		
		Date cave_date = new Date();
		session.setAttribute("farm_date", cave_date);
		String cave_text = "You entered a cave and earned" +" " + random_cave+" " +"gold" + " "+cave_date;
		
		ArrayList<Object> activities = (ArrayList<Object>)session.getAttribute("activities");
		activities.add(cave_text);
		session.setAttribute("activities", activities);
			
	}
	
	else if (game.equals("house")) {
		Random r = new Random();
		Integer random_house = r.nextInt(10, 20 + 1);
		session.setAttribute("random_house", random_house);
		Integer total_gold = (Integer) session.getAttribute("gold");
		
		Integer all_gold= total_gold + random_house;
		session.setAttribute("gold", all_gold);
		
		Date house_date = new Date();
		session.setAttribute("farm_date", house_date);
		String house_text = "You entered a house and earned " +" " + random_house+" " +"gold "+" " + house_date;
		
		ArrayList<Object> activities = (ArrayList<Object>)session.getAttribute("activities");
		activities.add(house_text);
		session.setAttribute("activities", activities);
			
			
	}
	
	else if (game.equals("quest")) {
		Random r = new Random();
		Integer random_quest = r.nextInt(-50, 50 + 1);
		session.setAttribute("random_quest", random_quest);
		if (random_quest>0) {
		
			
			Integer total_gold = (Integer) session.getAttribute("gold");
			System.out.println( total_gold);
			Integer all_gold= total_gold + random_quest;
			session.setAttribute("gold", all_gold);
			
			Date quest_date = new Date();
			session.setAttribute("quest_date", quest_date);
		String quest_text = "You completed a quest and earned" +" " + random_quest+" "+  "gold." +" "+ quest_date;
		
		ArrayList<Object> activities = (ArrayList<Object>)session.getAttribute("activities");
		activities.add(quest_text);
		session.setAttribute("activities", activities);
		}
		
		
		else {
			
			Integer total_gold = (Integer) session.getAttribute("gold");
			
			Integer all_gold= total_gold + random_quest;
			session.setAttribute("gold", all_gold);
			
			Date quest_date = new Date();
			session.setAttribute("quest_date", quest_date);
			String quest_text = "You faild a quest and lost " +" " + random_quest+" " +" gold. " + " "+ quest_date;
			
			ArrayList<Object> activities = (ArrayList<Object>)session.getAttribute("activities");
			activities.add(quest_text);
			session.setAttribute("activities", activities);
			}
			
	}
	
	
	
	
	 return "redirect:/Gold";
	
}

@PostMapping("/destroy")
public String index3(HttpSession session) {
	if(session.getAttribute("gold") != null && session.getAttribute("activities")!= null){  
        session.invalidate();
       
        
}
	return "redirect:/Gold";
}

}
