package com.haninz.manytomany.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.haninz.manytomany.models.Category;
import com.haninz.manytomany.models.Product;
import com.haninz.manytomany.repositories.CategoryRepository;
import com.haninz.manytomany.repositories.ProductRepository;


@Service
public class CategoryService {
private final CategoryRepository categoryRepository;
private final ProductRepository productRepository;
    
    public CategoryService(CategoryRepository categoryRepository, ProductRepository productRepository) {
        this.categoryRepository = categoryRepository;
        this.productRepository= productRepository;
    }
    
    
    public List<Category> findcategories(){
		return categoryRepository.findAll();
	}
	
	public Category creatCategory(Category category) {
		return categoryRepository.save(category);
		
	}
	
	public Category findOne(Long id) {
		Optional <Category> optionalCategory = categoryRepository.findById(id);
		if (optionalCategory.isPresent()) {
			return optionalCategory.get();
		}
		else {
			return null;
		}
		
	}
	
	public List <Product> findproductsof(Long id) {
		Category category = findOne(id);
		List <Product> productsof = productRepository.findAllByCategories(category);
		return productsof;
	}
	
	public List <Product> findproductsnot(Long id) {
		Category category = findOne(id);
		List <Product> productsnot = productRepository.findByCategoriesNotContains(category);
		return productsnot;
	}
	
	public Category addproducts(Long id1, Long id2) {
		Category thiscategory = findOne(id1);
	    
	   
	    Optional<Product> optionalproduct = productRepository.findById(id2);
	    Product thisproduct= optionalproduct.get();
	    
	   
	    thiscategory.getProducts().add(thisproduct);
	    
	    
	    return categoryRepository.save(thiscategory);	
	}

}
