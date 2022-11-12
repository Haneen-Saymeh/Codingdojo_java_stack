package com.haninz.projects.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.haninz.projects.models.Project;
import com.haninz.projects.models.User;


@Repository
public interface ProjectRepository extends CrudRepository<Project, Long> {
	List<Project> findAll();
	List<Project> findAllByUsers(User user);
	List<Project> findByUsersNotContains(User user);
	 List<Project>findByUsersIdIsOrLeadIdIs(Long id, Long id2);
	
    
   


}
