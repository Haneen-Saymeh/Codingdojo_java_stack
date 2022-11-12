package com.haninz.projects.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.haninz.projects.models.Task;


@Repository
public interface TaskRepository extends CrudRepository<Task, Long> {
	List<Task> findAll();

}
