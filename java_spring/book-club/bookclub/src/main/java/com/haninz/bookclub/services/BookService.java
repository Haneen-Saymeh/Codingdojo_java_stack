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

public Book creatbook(Book book) {
//	Optional <User> postedby = userRepository.findById(id);
//	book.setUser(postedby.get());
	return bookRepository.save(book);
	
	
}

public Book updatebook(Book book,Long id) {
	Optional <User> updatedby = userRepository.findById(id);
	book.setUser(updatedby.get());
	Optional <User> borrower = userRepository.findById(book.getUserb().getId());
	if(borrower.isPresent()) {
		book.setUserb(borrower.get());
		return bookRepository.save(book);

		
	}
	else {
		book.setUserb(null);
	return bookRepository.save(book);
	}


}

public Book borrowbook(Book book,Long id ) {
	Optional <User> borrowedby = userRepository.findById(id);
	book.setUserb(borrowedby.get());
	return bookRepository.save(book);



}

public void returnbook(Book book) {
	
	book.setUserb(null);
	
	
	 bookRepository.save(book);
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


public List<Book> findallbooksnotinuser(Long id){
	
	return bookRepository.findByUserbIdIsOrUserIdIs(null,id);
}

public void deletebook(Long id) {
	
	bookRepository.deleteById(id);
}


}
