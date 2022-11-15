package com.haninz.projects.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
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

import com.haninz.projects.models.LoginUser;
import com.haninz.projects.models.Project;
import com.haninz.projects.models.Task;
import com.haninz.projects.models.User;

import com.haninz.projects.services.ProjectService;
import com.haninz.projects.services.TaskService;

import com.haninz.projects.services.UserService;

@Controller
public class HomeController {
	
	 private final UserService userService;
	 private final ProjectService projectService;
	 private final TaskService taskService;

	public HomeController(UserService userService, ProjectService projectService,TaskService taskService) {
		this.userService= userService;
		this.projectService=projectService;
		this.taskService=taskService;
		
		
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
		   userService.register(newUser, result);
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
	       User user = userService.login(newLogin, result);
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
	   List <Project> projects = projectService.findallprojects();
	model.addAttribute("projects", projects);
	       if (session.getAttribute("user_id") != null) {
	       Long user_id = (Long) session.getAttribute("user_id");
	       User thisUser = userService.findUserById(user_id);
	       model.addAttribute("thisuser", thisUser);
	       List <Project> projectsin = projectService.findallprojectsinuser(thisUser);
	       List <Project> projectsnotin = projectService.findallprojectsnotinuser(thisUser);
	       List <Project> projectsinboth = projectService.findallprojectsinusers(user_id, user_id);
	       
	       model.addAttribute("projectsnot", projectsnotin);
	       model.addAttribute("projectsin", projectsin);
	       model.addAttribute("projectsinboth", projectsinboth);
	       
	      
	       return "welcome.jsp";
	   }
	       
	       
	       else {
	           return "redirect:/";
	       }
	   }
	   
	   @GetMapping("/dashboard/join/{id}")
	   public String jointheteam(HttpSession session, @PathVariable("id")Long id, Model model) {
		   Long user_id = (Long) session.getAttribute("user_id");
		
		   
			
			Project project = projectService.findone(id);
//			User user = userService.findUserById(user_id);
//			List <Project> usersprojects= user.getProjects();
//			
//			 usersprojects.add(project);
//			 user.setProjects(usersprojects);
//			userService.updateuser(user);
			projectService.jointeam(id, user_id);
	      
		   
		   return "redirect:/dashboard";		   
		   
	   }
	   
	   @GetMapping("/dashboard/leave/{id}")
	   public String leavetheteam(HttpSession session, @PathVariable("id")Long id, Model model) {
		   Long user_id = (Long) session.getAttribute("user_id");
		
		   
			
			
//			
			projectService.leaveteam(id, user_id);
	      
		   
		   return "redirect:/dashboard";		   
		   
	   }
	   
	   
	   @GetMapping ("/projects/new")
	   public String newbook(@ModelAttribute("project")Project project,HttpSession session, Model model) {
		   Long user_id = (Long) session.getAttribute("user_id");
		   User thisUser = userService.findUserById(user_id);
	       model.addAttribute("thisuser", thisUser);
		   return "newproject.jsp";
	   }
	   
	   
	   @PostMapping("/projects/create")
	   public String createbook(@Valid @ModelAttribute("project")Project project, BindingResult result,HttpSession session) {
		   if (result.hasErrors()) {
			   return "newproject.jsp";
		   }
		   else {
			   
//			  
		     
		       projectService.creatproject(project);
		     
			   return "redirect:/dashboard";
			   
		   }
	   }
	   
	   
	   
	   @GetMapping("/projects/{id}/edit")
	   public String editproject(@PathVariable("id")Long id, Model model) {
		   Project project= projectService.findone(id);
		   model.addAttribute("project", project);
		   return "editproject.jsp";
	   }
	   
	   @PutMapping("/projects/{id}/edit")
	   public String updatebook(@Valid @ModelAttribute("project")Project project, BindingResult result,HttpSession session) {
		   if (result.hasErrors()) {
			    return "editproject.jsp";
		   }
		   else {
			   
		       projectService.updateproject(project);
			  
			   return "redirect:/dashboard";
			   
			   
		   }
			  
	   }
	   
	   
	   @GetMapping("/projects/{id}")
	   public String showbook(@PathVariable("id") Long id, Model model,HttpSession session ) {
		  
		   Project theproject = projectService.findone(id);
		   model.addAttribute("theproject", theproject);
//		   Long user_id = (Long) session.getAttribute("user_id");
	      
	       model.addAttribute("user_id", session.getAttribute("user_id"));
		   
		   return "oneproject.jsp";
	   }
	   
	   
	   @DeleteMapping("/projects/{id}")
	   public String delbook(@PathVariable("id")Long id) {
		  projectService.deleteproject(id);
		  return "redirect:/dashboard";
	   }
	   
	   @GetMapping("/projects/{id}/tasks")
	   public String showtasks(@PathVariable("id") Long id, Model model,HttpSession session,@ModelAttribute("task")Task task ) {
		  
		   Project theproject = projectService.findone(id);
		   model.addAttribute("theproject", theproject);
//		  
	      
		   Long user_id = (Long) session.getAttribute("user_id");
	       User thisUser = userService.findUserById(user_id);
	       model.addAttribute("thisuser", thisUser);
		   
		   return "tasks.jsp";
	   }
	   
	   @PostMapping("/projects/{id}/tasks/create")
	   public String createtask(@Valid @ModelAttribute("task")Task task, BindingResult result,HttpSession session, Model model,@PathVariable("id") Long id) {
		   Project theproject = projectService.findone(id);
		   model.addAttribute("theproject", theproject);
		   Long user_id = (Long) session.getAttribute("user_id");
	       User thisUser = userService.findUserById(user_id);
	       model.addAttribute("thisuser", thisUser);
		   if (result.hasErrors()) {
			  
			    return "tasks.jsp";
		   }
		   else {
			  
//			   theproject.getTasks().add(task);
			   taskService.creattask(task);
//		       projectService.updateproject(theproject);
			  
			   return "redirect:/projects/{id}/tasks";
			   
			   
		   }
			  
	   }
	   

}
