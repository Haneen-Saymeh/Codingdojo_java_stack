package com.haninz.travels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.haninz.travels.models.Travel;
import com.haninz.travels.repositories.TravelRepository;

@Service
public class TravelService {
	private final TravelRepository  travelRepository;
	
	public TravelService(TravelRepository  travelRepository) {
        this. travelRepository =  travelRepository;
    }
	
	public List<Travel> AllTravels(){
		return  travelRepository.findAll();
	}
	
	public Travel createTravel(Travel travel) {
		return travelRepository.save(travel);
	}
	
	public Travel findOne(Long id){
		Optional <Travel> optionalTravel = travelRepository.findById(id);
		if (optionalTravel.isPresent()) {
			return optionalTravel.get();
		}
			else {
				return null;
			}
		}
	public void deleteTravel(Long id) {
		travelRepository.deleteById(id);
		
	}
		
	public Travel update(Travel travel) {
		
		
		return travelRepository.save(travel);
	}
	

}
