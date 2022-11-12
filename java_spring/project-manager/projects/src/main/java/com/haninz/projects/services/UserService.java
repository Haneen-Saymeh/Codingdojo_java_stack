package com.haninz.projects.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.haninz.projects.models.LoginUser;
import com.haninz.projects.models.User;
import com.haninz.projects.repositories.UserRepository;

@Service
public class UserService {
	private final UserRepository userRepository;
	
	public UserService(UserRepository userRepository) {
		this.userRepository=userRepository;
		
	}
	
	public User register(User newUser, BindingResult result) {
		if (userRepository.findByEmail(newUser.getEmail()).isPresent()) {
			result.rejectValue("email", "Unique", "This email is already in use!");
		}
		
		if(!newUser.getPassword().equals(newUser.getConfirm())) {
			result.rejectValue("confirm", "Matches", "The Confirm Password must match Password!");
		}
		
		if (result.hasErrors()) {
			return null;
		}
		else {
			String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
			newUser.setPassword(hashed);
			return userRepository.save(newUser);
		}
		
	}
	
	public User login(LoginUser newLogin, BindingResult result) {
	       if(result.hasErrors()) {
	           return null;
	       }
	       Optional<User> potentialUser = userRepository.findByEmail(newLogin.getEmail());
	       if(!potentialUser.isPresent()) {
	           result.rejectValue("email", "Unique", "invalid credentials!");
	           return null;
	       }
	       User user = potentialUser.get();
	       if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
	           result.rejectValue("password", "Matches", "invalid credentials!");
	       }
	       if(result.hasErrors()) {
	           return null;
	       } else {
	           return user;
	       }
	   }
	   
	   public User findUserById(Long id) {
	       Optional<User> u = userRepository.findById(id);

	       if(u.isPresent()) {
	           return u.get();
	           } else {
	           return null;
	       }
	   }
	   
	}

	
	
	

