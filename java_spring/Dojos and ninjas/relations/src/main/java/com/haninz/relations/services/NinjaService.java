package com.haninz.relations.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.haninz.relations.models.Ninja;
import com.haninz.relations.repositories.NinjaRepository;

@Service
public class NinjaService {
private final NinjaRepository ninjaRepository;
    
    public NinjaService(NinjaRepository ninjaRepository) {
        this.ninjaRepository = ninjaRepository;
    }
    
    
    public List<Ninja> findaninjas(){
		return ninjaRepository.findAll();
	}
	
	public Ninja creatNinja(Ninja ninja) {
		return ninjaRepository.save(ninja);
		
	}
	
	public Ninja findOne(Long id) {
		Optional <Ninja> optionalninja = ninjaRepository.findById(id);
		if (optionalninja.isPresent()) {
			return optionalninja.get();
		}
		else {
			return null;
		}
		
	}

}
