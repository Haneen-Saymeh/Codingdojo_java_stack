package com.haninz.projects.services;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.haninz.projects.models.Project;
import com.haninz.projects.models.UserProject;
import com.haninz.projects.repositories.ProjectRepository;
import com.haninz.projects.repositories.UserProjectRepo;

@Service
public class UserProjectService {
private final UserProjectRepo userProjectRepo;
private final ProjectRepository projectRepository;
	
	public UserProjectService(UserProjectRepo userProjectRepo, ProjectRepository projectRepository) {
		this.userProjectRepo=userProjectRepo;
		this.projectRepository=projectRepository;
		
	}
	
	public UserProject creatthird(UserProject us, Long id) {
		Optional <Project> thisproject = projectRepository.findById(id);
		us.setProject(thisproject.get());
		

		return userProjectRepo.save(us);
	}

}
