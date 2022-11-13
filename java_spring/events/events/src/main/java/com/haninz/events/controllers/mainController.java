package com.haninz.events.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.haninz.events.models.LoginUser;
import com.haninz.events.models.User;
import com.haninz.events.services.AppService;
@Controller
public class mainController {
	private final AppService appService;
	
	public mainController(AppService appService) {
		this.appService=appService;
		
	}
	
	 @GetMapping("/")
	   public String index(Model model) {
	       model.addAttribute("newUser", new User());
	       model.addAttribute("newLogin", new LoginUser());
	       return "regform.jsp";
	   }
	   
	   
	   
	   @PostMapping("/register")
	   public String register(@Valid @ModelAttribute("newUser") User newUser, 
	           BindingResult result, Model model, HttpSession session) {
		   appService.register(newUser, result);
	       if(result.hasErrors()) {
	           model.addAttribute("newLogin", new LoginUser());
	           return "regform.jsp";
	       }
	       session.setAttribute("user_id", newUser.getId());
	       return "redirect:/dashboard";
	   }
	   
	   @PostMapping("/login")
	   public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
	           BindingResult result, Model model, HttpSession session) {
	       User user = appService.login(newLogin, result);
	       if(result.hasErrors()) {
	           model.addAttribute("newUser", new User());
	           return "regform.jsp";
	       }
	       session.setAttribute("user_id", user.getId());
	       return "redirect:/dashboard";
	   }
	   
	   @GetMapping("/logout")
	   public String logout(HttpSession session) { 
	           session.invalidate();
	           return "redirect:/";

	   }
	   
	   
	   @GetMapping("/dashboard")
	   public String home(Model model, HttpSession session) {
//	   List <Project> projects = projectService.findallprojects();
//	model.addAttribute("projects", projects);
	       if (session.getAttribute("user_id") != null) {
	       Long user_id = (Long) session.getAttribute("user_id");
	       User thisUser = appService.findUserById(user_id);
	       model.addAttribute("thisuser", thisUser);
//	       List <Project> projectsin = projectService.findallprojectsinuser(thisUser);
//	       List <Project> projectsnotin = projectService.findallprojectsnotinuser(thisUser);
//	       List <Project> projectsinboth = projectService.findallprojectsinusers(user_id, user_id);
//	       
//	       model.addAttribute("projectsnot", projectsnotin);
//	       model.addAttribute("projectsin", projectsin);
//	       model.addAttribute("projectsinboth", projectsinboth);
//	       
	      
	       return "dash.jsp";
	   }
	       
	       
	       else {
	           return "redirect:/";
	       }
	   }

}
