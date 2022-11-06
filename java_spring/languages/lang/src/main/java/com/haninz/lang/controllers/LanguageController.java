package com.haninz.lang.controllers;

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

import com.haninz.lang.models.Language;
import com.haninz.lang.services.LanguageService;
@Controller
public class LanguageController {
	private final LanguageService languageService;
	
	public LanguageController(LanguageService languageService) {
		this.languageService=languageService;
	}
	
	@GetMapping("/languages")
	public String showForm(@ModelAttribute("language") Language language, Model model) {
		List <Language> languages= languageService.allLanguages();
		model.addAttribute("languages", languages);
		return "mainpage.jsp";
	}
	
	@PostMapping("/create")
	public String create(@Valid @ModelAttribute("language") Language language,BindingResult result, Model model) {
		if (result.hasErrors()) {
			List <Language> languages= languageService.allLanguages();
			model.addAttribute("languages", languages);
			return "mainpage.jsp";
		} else {
			languageService.creatLanguage(language);
		    return "redirect:/languages";
				
			}
	}
	
	@GetMapping("/languages/edit/{id}")
	public String edit(@PathVariable("id")Long id, Model model) {
		Language language = languageService.findOne(id);
		model.addAttribute("language", language);
		return "edit.jsp";
	}
	
	@PutMapping("/languages/{id}")
	public String update(@Valid @ModelAttribute("language") Language language,BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "edit.jsp";
			
		}
		else {
			languageService.updateone(language);
			 return "redirect:/languages";
			
			
		}
	}
	
	
	
	
	
	
	
	
	@GetMapping("/languages/{id}")
	public String showone(@PathVariable("id") Long id, Model model) {
		Language thelanguage = languageService.findOne(id);
		model.addAttribute("thelanguage", thelanguage);
		return "show.jsp";
		
	}
	
	@DeleteMapping("/languages/{id}")
	public String deleteone(@PathVariable("id")Long id) {
		languageService.deletelang(id);
	    return "redirect:/languages";
		
		
		
		
	}
			
	
}
