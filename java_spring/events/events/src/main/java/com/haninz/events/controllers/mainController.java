package com.haninz.events.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.scheduling.config.Task;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.haninz.events.models.Event;
import com.haninz.events.models.LoginUser;
import com.haninz.events.models.Message;
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
	   public String home(Model model, HttpSession session, @ModelAttribute("event") Event event) {
//	   List <Project> projects = projectService.findallprojects();
//	model.addAttribute("projects", projects);
	       if (session.getAttribute("user_id") != null) {
	       Long user_id = (Long) session.getAttribute("user_id");
	       User thisUser = appService.findUserById(user_id);
	       model.addAttribute("thisuser", thisUser);
	       String statex = thisUser.getState();
	       List <Event> eventsnotin = appService.findalleventsnotinstate(statex);
	       List <Event> eventsin = appService.findalleventsinstate(statex);
//	      
	       model.addAttribute("eventsnotin", eventsnotin);
	       model.addAttribute("eventsin", eventsin);
//	       
	      
	       return "dash.jsp";
	   }
	       
	       
	       else {
	           return "redirect:/";
	       }
	   }
	   
	   
	   @PostMapping("/dashboard/create")
	   public String createbook(@Valid  @ModelAttribute("event") Event event, BindingResult result,HttpSession session) {
		   if (result.hasErrors()) {
			   return "dash.jsp";
		   }
		   else {
			   
//			  
		     
		       appService.createevent(event);
		     
			   return "redirect:/dashboard";
			   
		   }
	   }
	   
	   
	   @GetMapping("/events/{id}/edit")
	   public String editevent(@PathVariable("id")Long id, Model model,HttpSession session) {
		   Long user_id = (Long) session.getAttribute("user_id");
	       User thisUser = appService.findUserById(user_id);
	       model.addAttribute("thisuser", thisUser);
		   Event event= appService.findoneevent(id);
		   model.addAttribute("event", event);
		   return "edit.jsp";
	   }
	   
	   @PutMapping("/events/{id}/edit")
	   public String updatebook(@Valid @ModelAttribute("event")Event event, BindingResult result,HttpSession session) {
		   if (result.hasErrors()) {
			    return "edit.jsp";
		   }
		   else {
			   
		       appService.updateevent(event);
			  
			   return "redirect:/dashboard";
			   
			   
		   }
			  
	   }	
	   
	   
	   @GetMapping("/events/{id}")
	   public String showevent(@PathVariable("id") Long id, Model model,HttpSession session,  @ModelAttribute("m")Message m ) {
		  
		   Event theevent = appService.findoneevent(id);
		   model.addAttribute("theevent", theevent);
		    Long user_id = (Long) session.getAttribute("user_id");
	       User thisUser = appService.findUserById(user_id);
	       model.addAttribute("thisuser", thisUser);
		   
		   return "one.jsp";
	   }
	   
	   
	   @PostMapping("/events/{id}/comment")
	   public String createmessage(@Valid  @ModelAttribute("m")Message m , BindingResult result,HttpSession session,Model model,@PathVariable("id") Long id) {
		   Event theevent = appService.findoneevent(id);
		   model.addAttribute("theevent", theevent);
		    Long user_id = (Long) session.getAttribute("user_id");
	       User thisUser = appService.findUserById(user_id);
	       model.addAttribute("thisuser", thisUser);
		   if (result.hasErrors()) {
			   return "one.jsp";
		   }
		   else {
			   
//			  
		     
		       appService.createmesg(m);
		     
			   return "redirect:/events/{id}";
			   
		   }
	   }
	   
	   @GetMapping("/dashboard/join/{id}")
	   public String joinevent(@PathVariable("id") Long id, Model model,HttpSession session) {
		   Long user_id = (Long) session.getAttribute("user_id");
		   
		   appService.jointeam(id, user_id);
		   return "redirect:/dashboard";
		   
	   }
	   

}
