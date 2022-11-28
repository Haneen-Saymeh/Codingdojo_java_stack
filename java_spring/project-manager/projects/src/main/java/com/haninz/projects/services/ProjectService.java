package com.haninz.projects.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.haninz.projects.models.Project;
import com.haninz.projects.models.User;
import com.haninz.projects.repositories.ProjectRepository;

import com.haninz.projects.repositories.UserRepository;

@Service
public class ProjectService {
private final ProjectRepository projectRepository; 
private final UserRepository userRepository;
	
	public ProjectService(ProjectRepository projectRepository, UserRepository userRepository) {
		this.projectRepository=projectRepository;
		this.userRepository= userRepository;
		
	}
	
	
	public Project creatproject(Project project) {

		return projectRepository.save(project);
	}
	
	
	public Project updateproject(Project project) {

		return projectRepository.save(project);
	}


		
		
	




	public Project findone(Long id) {
		Optional <Project> optionalproject = projectRepository.findById(id);
		if (optionalproject.isPresent()) {
			return optionalproject.get();
		}
		else {
			return null;
		}
	}

	public List<Project> findallprojects(){
		return projectRepository.findAll();
	}


	public List<Project> findallprojectsnotinuser(User user){
		
		return projectRepository.findByUsersNotContains(user);
	}
	
	
public List<Project> findallprojectsinuser(User user){
		
		return projectRepository.findAllByUsers(user);
	}

	public void deleteproject(Long id) {
		
		projectRepository.deleteById(id);
	}

	
public List<Project> findallprojectsinusers(Long id1, Long id2){
		
		return projectRepository.findByUsersIdIsOrLeadIdIs(id1, id2);
	}

public Project jointeam(Long id1, Long id2){
	Project thisproject = findone(id1);
	Optional <User> optionaluser = userRepository.findById(id2);
	User thisuser = optionaluser.get();
	thisproject.getUseres().add(thisuser);
	
	
	return projectRepository.save(thisproject);
	
	
}

public Project leaveteam(Long id1, Long id2){
	Project thisproject = findone(id1);
	Optional <User> optionaluser = userRepository.findById(id2);
	User thisuser = optionaluser.get();
	thisproject.getUseres().remove(thisuser);
	
	
	return projectRepository.save(thisproject);
	
	
}

}
