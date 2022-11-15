package com.haninz.countries.repos;

import org.springframework.stereotype.Repository;

import com.haninz.countries.models.Country;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

@Repository
public interface CountryRepo extends CrudRepository <Country, Long>{
	@Query(value="select A.name,B.language,B.percentage from countries AS A join languages AS B on A.id=B.country_id where B.language='Slovene' ORDER BY B.percentage DESC ", nativeQuery=true)
	List<Object[]> han1();
	
	

	
	
	  @Query(value="select A.name,count(A.Code) AS NumberOfCities from country AS A join cities AS B on A.code = B.country_code group by A.code order by NumberOfCities desc ", nativeQuery=true)
	  List<Object[]> han2();
	  
	  
	  
	  @Query(value="select * from cities where country_code=\"MEX\" AND population > 500000 order by population desc;", nativeQuery=true)
	  List<Object[]> han3();
	  
	  @Query(value="select B.Name,A.Language , A.Percentage from countrylanguage AS A join country AS B on A.CountryCode=B.Code where A.Percentage > 89 order by A.Percentage desc ;", nativeQuery=true)
	  List<Object[]> han4();
	  
	  
	  @Query(value="SELECT name ,surface_area,population FROM countries where surface_area < 501 and population > 100000;", nativeQuery=true)
	  List<Object[]> han5();
	  
	  
	  @Query(value="select name,government_form,capital,life_expectancy from countries where government_form='Constitutional Monarchy' and capital > 200 and life_expectancy > 75;", nativeQuery=true)
	  List<Object[]> han6();
	  
	  @Query(value="select B.name AS Country_name  , A.name AS City_name , A.district,A.population from cities AS A join country AS B on A.country_code=B.code where B.Name='Argentina' and A.district='Buenos Aires' AND A.population > 500000 ;", nativeQuery=true)
	  List<Object[]> han7();
	  
	  @Query(value="select A.region,count(A.code) AS NumberOfCountries from countries AS A join country AS B on A.code=B.Code group by A.region order by NumberOfCountries desc ;", nativeQuery=true)
	  List<Object[]> han8();

}
