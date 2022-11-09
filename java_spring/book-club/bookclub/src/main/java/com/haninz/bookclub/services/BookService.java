package com.haninz.bookclub.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.haninz.bookclub.models.Book;
import com.haninz.bookclub.models.User;
import com.haninz.bookclub.repositories.BookRepository;
import com.haninz.bookclub.repositories.UserRepository;

@Service
public class BookService {
	
private final BookRepository bookRepository;
private final UserRepository userRepository;

public BookService(BookRepository bookRepository, UserRepository userRepository) {
	this.bookRepository=bookRepository;
	this.userRepository=userRepository;
}

public Book creatbook(Book book, Long id) {
	Optional <User> postedby = userRepository.findById(id);
	book.setUser(postedby.get());
	return bookRepository.save(book);
	
	
}

public Book updatebook(Book book) {
	return bookRepository.save(book);



}

public Book findone(Long id) {
	Optional <Book> optionalbook = bookRepository.findById(id);
	if (optionalbook.isPresent()) {
		return optionalbook.get();
	}
	else {
		return null;
	}
}

public List<Book> findallbooks(){
	return bookRepository.findAll();
}

public void deletebook(Long id) {
	
	bookRepository.deleteById(id);
}


}
