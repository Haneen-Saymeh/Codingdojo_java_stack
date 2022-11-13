package com.haninz.events.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.haninz.events.models.LoginUser;
import com.haninz.events.models.User;
import com.haninz.events.repos.UserRepo;

@Service
public class AppService {
	private final UserRepo userRepo;
	
	public AppService(UserRepo userRepo) {
		this.userRepo=userRepo;
		
	}
	public User register(User newUser, BindingResult result) {
		if (userRepo.findByEmail(newUser.getEmail()).isPresent()) {
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
			return userRepo.save(newUser);
		}
		
	}
	
	public User login(LoginUser newLogin, BindingResult result) {
	       if(result.hasErrors()) {
	           return null;
	       }
	       Optional<User> potentialUser = userRepo.findByEmail(newLogin.getEmail());
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
	       Optional<User> u = userRepo.findById(id);

	       if(u.isPresent()) {
	           return u.get();
	           } else {
	           return null;
	       }
	   }
	   
	   
	   
	   public User updateuser(User user) {
		  return userRepo.save(user);
	   }
	

	
}
