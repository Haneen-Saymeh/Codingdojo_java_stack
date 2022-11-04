package com.books.mvc.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.books.mvc.models.Book;
import com.books.mvc.services.BookService;

@Controller
public class BookController {
	private final BookService bookService;
	public BookController(BookService bookService) {
		this.bookService= bookService;
	}
	@GetMapping ("/books/{id}")
	public String index1(@PathVariable Long id, Model model) {
		Book onebook = bookService.findBook(id);
		model.addAttribute("thebook", onebook);
		return "onebook.jsp";
	}
	
	@GetMapping ("/books")
	public String index2(Model model) {
		List <Book> books = bookService.allBooks();
		model.addAttribute("books", books);
		
		
		return "allbooks.jsp";
	}

}
