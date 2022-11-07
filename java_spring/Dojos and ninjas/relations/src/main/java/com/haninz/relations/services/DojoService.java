package com.haninz.relations.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.haninz.relations.models.Dojo;

import com.haninz.relations.repositories.DojoRepository;

@Service
public class DojoService {
	
private final DojoRepository dojoRepository;
    
    public DojoService(DojoRepository dojoRepository) {
        this.dojoRepository = dojoRepository;
    }
    
    
    public List<Dojo> finddojos(){
		return dojoRepository.findAll();
	}
	
	public Dojo creatdojo(Dojo dojo) {
		return dojoRepository.save(dojo);
		
	}
	
	public Dojo findOne(Long id) {
		Optional <Dojo> optionaldojo = dojoRepository.findById(id);
		if (optionaldojo.isPresent()) {
			return optionaldojo.get();
		}
		else {
			return null;
		}
		
	}

}
