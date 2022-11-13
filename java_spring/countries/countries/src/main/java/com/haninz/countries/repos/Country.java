package com.haninz.countries.repos;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Country extends CrudRepository<Country, Long>{
	 @Query(value="SELECT name, language, percentage FROM countries\r\n"
	 		+ "INNER JOIN languages\r\n"
	 		+ "ON countries.id = languages.country_id\r\n"
	 		+ "WHERE language=\"Slovene\"\r\n"
	 		+ "ORDER BY percentage DESC", nativeQuery=true)
	    List<Object[]> haninz();

}
