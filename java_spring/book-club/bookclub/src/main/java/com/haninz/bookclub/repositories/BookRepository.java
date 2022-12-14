package com.haninz.bookclub.repositories;


import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.haninz.bookclub.models.Book;


@Repository
public interface BookRepository extends CrudRepository <Book, Long> {
	
	 List<Book> findAll();
	 List<Book>findByUserbIdIsOrUserIdIs(Long id, Long id2);

}
