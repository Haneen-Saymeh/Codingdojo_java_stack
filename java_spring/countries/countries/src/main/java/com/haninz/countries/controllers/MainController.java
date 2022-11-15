package com.haninz.countries.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.haninz.countries.services.ApiService;

@RestController
public class MainController {
	
	@Autowired
	ApiService apiService;
	
	
	@RequestMapping("/api/sol1")
	public List<Object[]> sol1() {
		List<Object[]> all = apiService.hanz1();
		
		return all;
	}
	@RequestMapping("/api/sol2")
	public List<Object[]> sol2() {
		List<Object[]> all = apiService.hanz2();
		
		return all;
	}
	
	@RequestMapping("/api/sol3")
	public List<Object[]> sol3() {
		List<Object[]> all = apiService.hanz3();
		
		return all;
	}
	
	
	@RequestMapping("/api/sol4")
	public List<Object[]> sol4() {
		List<Object[]> all = apiService.hanz4();
		
		return all;
	}
	
	@RequestMapping("/api/sol5")
	public List<Object[]> sol() {
		List<Object[]> all = apiService.hanz5();
		
		return all;
	}
	@RequestMapping("/api/sol6")
	public List<Object[]> sol6() {
		List<Object[]> all = apiService.hanz6();
		
		return all;
	}
	@RequestMapping("/api/sol7")
	public List<Object[]> sol7() {
		List<Object[]> all = apiService.hanz7();
		
		return all;
	}
	@RequestMapping("/api/sol8")
	public List<Object[]> sol8() {
		List<Object[]> all = apiService.hanz8();
		
		return all;
	}
}