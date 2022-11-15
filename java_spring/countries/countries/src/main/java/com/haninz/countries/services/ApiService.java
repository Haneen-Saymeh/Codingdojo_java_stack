package com.haninz.countries.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haninz.countries.repos.CountryRepo;

@Service
public class ApiService {

	@Autowired
	CountryRepo countryRepo;
	
	
	public List<Object[]> hanz1(){
		
		return countryRepo.han1();
	}  
	
	public List<Object[]> hanz2(){
		
		return countryRepo.han2();
	}  
	
	
	public List<Object[]> hanz3(){
		
		return countryRepo.han3();
	}  
	
	public List<Object[]> hanz4(){
		
		return countryRepo.han4();
}
	
	public List<Object[]> hanz5(){
		
		return countryRepo.han5();
}
	public List<Object[]> hanz6(){
		
		return countryRepo.han6();
}
	
	public List<Object[]> hanz7(){
		
		return countryRepo.han7();
}
	public List<Object[]> hanz8(){
		
		return countryRepo.han8();
}
	

	
	
}