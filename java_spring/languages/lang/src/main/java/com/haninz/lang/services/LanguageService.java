package com.haninz.lang.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.haninz.lang.models.Language;
import com.haninz.lang.repositories.LanguageRepository;
@Service
public class LanguageService {
	private final LanguageRepository languageRepository;
	
	public  LanguageService(LanguageRepository languageRepository) {
		this.languageRepository= languageRepository;
	}
	
	public List<Language> allLanguages(){
		return languageRepository.findAll();
	}
	
	public Language creatLanguage(Language language) {
		return languageRepository.save(language);
		
	}
	
	
	public Language findOne(Long id) {
		Optional <Language> optionallanguage = languageRepository.findById(id);
		if (optionallanguage.isPresent()) {
			return optionallanguage.get();
		}
		else {
			return null;
		}
		
	}
	
	public void deletelang(Long id) {
		languageRepository.deleteById(id);
		
	}
	
	public Language updateone(Language language) {
		return languageRepository.save(language);
		
	}

}

