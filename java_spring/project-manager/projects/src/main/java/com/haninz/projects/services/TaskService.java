package com.haninz.projects.services;

import org.springframework.stereotype.Service;


import com.haninz.projects.models.Task;
import com.haninz.projects.repositories.TaskRepository;


@Service
public class TaskService {
private final TaskRepository taskRepository;
	
	public TaskService(TaskRepository taskRepository) {
		this.taskRepository=taskRepository;
		
	}
	
	public Task creattask(Task task) {

		return taskRepository.save(task);
	}

}
