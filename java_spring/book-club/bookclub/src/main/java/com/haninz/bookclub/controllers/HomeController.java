package com.haninz.bookclub.controllers;

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

import com.haninz.bookclub.models.Book;
import com.haninz.bookclub.models.LoginUser;
import com.haninz.bookclub.models.User;
import com.haninz.bookclub.services.BookService;
import com.haninz.bookclub.services.UserService;

@Controller
public class HomeController {
   
   
   private final UserService userService;
   private final BookService bookService;
public HomeController(UserService userService, BookService bookService) {
	this.userService= userService;
	this.bookService=bookService;
	
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
       return "redirect:/books";
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
       return "redirect:/books";
   }
   
   @GetMapping("/logout")
   public String logout(HttpSession session) { 
           session.invalidate();
           return "redirect:/";

   }
   
   @GetMapping("/books")
   public String home(Model model, HttpSession session) {
List <Book> books = bookService.findallbooks();
model.addAttribute("books", books);
       if (session.getAttribute("user_id") != null) {
       Long user_id = (Long) session.getAttribute("user_id");
       User thisUser = userService.findUserById(user_id);
       model.addAttribute("thisuser", thisUser);
       
      
       return "dashboard.jsp";
   }
       
       
       else {
           return "redirect:/";
       }
   }
   
   @GetMapping ("/books/new")
   public String newbook(@ModelAttribute("book")Book book) {
	   return "newbook.jsp";
   }
   
   @PostMapping("/books/create")
   public String createbook(@Valid @ModelAttribute("book") Book book, BindingResult result,HttpSession session) {
	   if (result.hasErrors()) {
		   return "newbook.jsp";
	   }
	   else {
		   
		   Long user_id = (Long) session.getAttribute("user_id");
	      
	       bookService.creatbook(book, user_id);
	     
		   return "redirect:/books";
		   
	   }
   }
   
   
   @GetMapping("/books/{id}")
   public String showbook(@PathVariable("id") Long id, Model model,HttpSession session ) {
	  
	   Book thebook = bookService.findone(id);
	   model.addAttribute("thebook", thebook);
//	   Long user_id = (Long) session.getAttribute("user_id");
      
       model.addAttribute("user_id", session.getAttribute("user_id"));
	   
	   return "onebook.jsp";
   }
   
   @DeleteMapping("/books/{id}")
   public String delbook(@PathVariable("id")Long id) {
	  bookService.deletebook(id);
	  return "redirect:/books";
   }
   
   @GetMapping("/books/{id}/edit")
   public String editbook(@PathVariable("id")Long id, Model model) {
	   Book book= bookService.findone(id);
	   model.addAttribute("book", book);
	   return "editbook.jsp";
   }
   
   @PutMapping("/books/{id}/edit")
   public String updatebook(@Valid @ModelAttribute("book")Book book, BindingResult result,HttpSession session) {
	   if (result.hasErrors()) {
		    return "editbook.jsp";
	   }
	   else {
		   Long user_id = (Long) session.getAttribute("user_id");
		      
	       bookService.updatebook(book, user_id);
		  
		   return "redirect:/books";
		   
		   
	   }
   }
   
   
   
}
