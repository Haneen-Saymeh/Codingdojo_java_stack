package com.haninz.events.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import com.haninz.events.models.Message;


@Repository
public interface MessageRepo extends CrudRepository<Message, Long> {
	List<Message> findAll();

}
