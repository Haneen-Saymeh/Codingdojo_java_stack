package com.haninz.projects.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.haninz.projects.models.UserProject;

@Repository
public interface UserProjectRepo extends CrudRepository<UserProject, Long>{
	List <UserProject> findAll();

}
