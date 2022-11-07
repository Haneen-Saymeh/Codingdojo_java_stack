package com.haninz.relations.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.haninz.relations.models.Dojo;
import com.haninz.relations.models.Ninja;
import com.haninz.relations.services.DojoService;
import com.haninz.relations.services.NinjaService;
@Controller
public class DojoNinjaController {
	
private final DojoService dojoService;
private final NinjaService ninjaService;
	
	public DojoNinjaController(DojoService dojoService, NinjaService ninjaService) {
		this.dojoService=dojoService;
		this.ninjaService=ninjaService;
	}
	
	@GetMapping("/dojos")
	public String alldojos(Model model) {
		List <Dojo> dojos = dojoService.finddojos();
		model.addAttribute("dojos", dojos);
		return "dojos.jsp";
	}
	
	@GetMapping("/ninjas")
	public String allninjas(Model model) {
		List <Ninja> ninjas = ninjaService.findaninjas();
		model.addAttribute("ninjas", ninjas);
		return "ninjas.jsp";
	}
	
	
	
	@GetMapping("/dojos/new")
	public String newDojo(@ModelAttribute ("dojo") Dojo dojo) {
		return "newdojo.jsp";
	}
	
	
	@PostMapping("/dojos/create")
	public String createDojo(@Valid @ModelAttribute ("dojo") Dojo dojo, BindingResult result) {
		if (result.hasErrors()){
			return "newdojo.jsp";
			
		}
		else {
			dojoService.creatdojo(dojo);
			 return "redirect:/dojos";
	}
	
	}
	
	
	@GetMapping("/ninjas/new")
	public String newNinja(@ModelAttribute ("ninja") Ninja ninja, Model model) {
		List <Dojo> dojos = dojoService.finddojos();
		model.addAttribute("dojos", dojos);
		return "newninja.jsp";
	}
	
	
	@PostMapping("/ninjas/create")
	public String createNinja(@Valid @ModelAttribute ("ninja") Ninja ninja, BindingResult result, Model model) {
		if (result.hasErrors()){
			List <Dojo> dojos = dojoService.finddojos();
			model.addAttribute("dojos", dojos);
			return "newninja.jsp";
			
		}
		else {
			ninjaService.creatNinja(ninja);
			 return "redirect:/ninjas";
	}
	
	}
	
	@GetMapping("/dojos/{id}")
	public String onedojo(@PathVariable("id") Long id,  Model model) {
		Dojo onedojo = dojoService.findOne(id);
		model.addAttribute("onedojo", onedojo);
		return "onedojo.jsp";
	}
}
