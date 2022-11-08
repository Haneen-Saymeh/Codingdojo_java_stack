package com.haninz.manytomany.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.haninz.manytomany.models.Category;
import com.haninz.manytomany.models.Product;
import com.haninz.manytomany.repositories.CategoryRepository;
import com.haninz.manytomany.repositories.ProductRepository;

@Service
public class ProductService {
private final ProductRepository productRepository; 
private final CategoryRepository categoryRepository;
    
    public ProductService(ProductRepository productRepository,CategoryRepository categoryRepository) {
        this.productRepository = productRepository;
        this.categoryRepository=categoryRepository;
    }
    
    public List<Product> findproducts(){
		return productRepository.findAll();
	}
	
	public Product creatproduct(Product product) {
		return productRepository.save(product);
		
	}
	
	public Product updateproduct(Product product) {
		return productRepository.save(product);
		
	}
	
	public Product findOne(Long id) {
		Optional <Product> optionalproduct =productRepository.findById(id);
		if (optionalproduct.isPresent()) {
			return optionalproduct.get();
		}
		else {
			return null;
		}
		
	}
	
	public List <Category> categoriesnotin(Product product){
		List<Category> categoriesnot= categoryRepository.findByProductsNotContains(product);
		return categoriesnot;
		
		
	}


}
