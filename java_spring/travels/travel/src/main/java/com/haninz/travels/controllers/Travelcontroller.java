package com.haninz.travels.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.haninz.travels.models.Travel;
import com.haninz.travels.services.TravelService;
@Controller
public class Travelcontroller {
	private final TravelService travelService;
	
	public Travelcontroller(TravelService travelService) {
		this.travelService= travelService;
	}
	
	
	@GetMapping("/travels")
	public String newTravel(@ModelAttribute("travel") Travel travel, Model model){
		List <Travel> travels = travelService.AllTravels();
		model.addAttribute("travels", travels);
		return "travelform.jsp";
		
		
	}
	
	@PostMapping("/create")
	public String create(@Valid @ModelAttribute("travel") Travel travel, BindingResult result, Model model) {
		if (result.hasErrors()) {
			List <Travel> travels = travelService.AllTravels();
			model.addAttribute("travels", travels);
            return "travelform.jsp";
        } else {
            travelService.createTravel(travel);
            return "redirect:/travels";
        }
	}
	
	@DeleteMapping(value = "/travels/{id}")
	public String del(@PathVariable("id")Long id) {
		travelService.deleteTravel(id);
		return "redirect:/travels";
		
	}
	
	@GetMapping("/travels/{id}")
	public String show(@PathVariable("id")Long id, Model model) {
		Travel onetravel = travelService.findOne(id);
		model.addAttribute("thetravel", onetravel);
		return "showtravel.jsp";
	}
	
	@GetMapping("/travels/{id}/edit")
	public String editform(@PathVariable("id")Long id, Model model) {
		Travel travel= travelService.findOne(id);
		model.addAttribute("travel", travel);
		return "edit.jsp";
	}
	
	@PutMapping("/travels/{id}")
	public String updateTravel(@Valid @ModelAttribute("travel") Travel travel, BindingResult result) {
		if (result.hasErrors()) {
			return "edit.jsp";
		}
		else {
			travelService.update(travel);
		return "redirect:/travels"; 
	}
	}
	
	

}
