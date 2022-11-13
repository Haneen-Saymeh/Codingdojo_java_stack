package com.haninz.events.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.haninz.events.models.Event;
import com.haninz.events.models.User;

@Repository
public interface EventRepo extends CrudRepository<Event, Long>{
	List<Event> findAll();
	List<Event> findByState(String state);
	List<Event> findByStateNotIn(String state);

}
