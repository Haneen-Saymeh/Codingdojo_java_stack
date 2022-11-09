package com.haninz.authentication.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.haninz.authentication.models.LoginUser;
import com.haninz.authentication.models.User;
import com.haninz.authentication.services.UserService;


@Controller
public class HomeController {
   
   @Autowired
   private UserService userServ;
   
   @GetMapping("/")
   public String index(Model model) {
       model.addAttribute("newUser", new User());
       model.addAttribute("newLogin", new LoginUser());
       return "regform.jsp";
   }
   
   
   
   @PostMapping("/register")
   public String register(@Valid @ModelAttribute("newUser") User newUser, 
           BindingResult result, Model model, HttpSession session) {
       userServ.register(newUser, result);
       if(result.hasErrors()) {
           model.addAttribute("newLogin", new LoginUser());
           return "regform.jsp";
       }
       session.setAttribute("user_id", newUser.getId());
       return "redirect:/welcome";
   }
   
   @PostMapping("/login")
   public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, 
           BindingResult result, Model model, HttpSession session) {
       User user = userServ.login(newLogin, result);
       if(result.hasErrors()) {
           model.addAttribute("newUser", new User());
           return "regform.jsp";
       }
       session.setAttribute("user_id", user.getId());
       return "redirect:/welcome";
   }
   
   @GetMapping("/logout")
   public String logout(HttpSession session) { 
           session.invalidate();
           return "redirect:/";

   }
   
   @GetMapping("/welcome")
   public String home(Model model, HttpSession session) {
       if (session.getAttribute("user_id") != null) {
       Long user_id = (Long) session.getAttribute("user_id");
       User thisUser = userServ.findUserById(user_id);
       model.addAttribute("thisuser", thisUser);
       return "welcome.jsp";
   }
       else {
           return "redirect:/";
       }
   }
   
}
