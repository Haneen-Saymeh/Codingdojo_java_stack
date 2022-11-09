package com.haninz.authentication.services;

import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.haninz.authentication.models.LoginUser;
import com.haninz.authentication.models.User;
import com.haninz.authentication.repisotories.UserRepository;

@Service
public class UserService {
    
   
    private UserRepository userRepository;
    
    public UserService(UserRepository userRepository) {
    	this.userRepository= userRepository;
    }
    
    // TO-DO: Write register and login methods!
    public User register(User newUser, BindingResult result) {
        // TO-DO: Additional validations!
        return null;
    }
    public User login(LoginUser newLoginObject, BindingResult result) {
        // TO-DO: Additional validations!
        return null;
    }
}