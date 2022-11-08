package com.haninz.manytomany.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.haninz.manytomany.models.Category;
import com.haninz.manytomany.models.Product;
import com.haninz.manytomany.services.CategoryService;
import com.haninz.manytomany.services.ProductService;

@Controller
public class ShopController {
	private final ProductService productService;
	private final CategoryService categoryService;
		
		public ShopController(ProductService productService,CategoryService categoryService) {
			this.productService=productService;
			this.categoryService=categoryService;
		}
		
		
		@GetMapping("/")	
		public String newCat(Model model) {
			List <Category> categories = categoryService.findcategories();
			model.addAttribute("categories", categories);
			List <Product> products = productService.findproducts();
			model.addAttribute("products", products);
			return "home.jsp";
			
		}
		
		
	@GetMapping("/categories/new")	
	public String newCat(@ModelAttribute("category") Category category) {
		return "newcat.jsp";
		
	}
	
	
	
	@PostMapping("/categories/create")	
	public String newCatcreate(@Valid @ModelAttribute("category") Category category, BindingResult result) {
		if(result.hasErrors()) {
			return "newcat.jsp";
		}
		else {
			categoryService.creatCategory(category);
			return "redirect:/";
		}
		
	}
	
	
	@GetMapping("/products/new")	
	public String newCat(@ModelAttribute("product") Product product) {
		return "newpro.jsp";
		
	}
	
	
	
	@PostMapping("/products/create")	
	public String newCatcreate(@Valid  @ModelAttribute("product") Product product, BindingResult result) {
		if(result.hasErrors()) {
			return "newpro.jsp";
		}
		else {
			productService.creatproduct(product);
			return "redirect:/";
		}
		
	}
	
	
	@GetMapping("/categories/{id}")	
	public String showcat(@PathVariable("id") Long id, Model model) {
		Category category =  categoryService.findOne(id);
		List <Product> productsofcategory = categoryService.findproductsof(id);
		List <Product> productsnotincategory = categoryService.findproductsnot(id);
		model.addAttribute("category", category);
		model.addAttribute("products", productsofcategory);
		model.addAttribute("productz", productsnotincategory);
		return "onecategory.jsp";
		
	
	}
	
	
	@PostMapping("/categories/{id}/productid")	
	public String addproductsto(@PathVariable("id") Long id,@RequestParam("productid") Long productid, Model model) {
		categoryService.addproducts(id, productid);
		return "redirect:/categories/{id}";
		
	
	}
	
	@GetMapping("/products/{id}")
	public String showpro(@PathVariable ("id") Long id, Model model) {
		Product product = productService.findOne(id);
		model.addAttribute("product", product);
		List <Category> categories = productService.categoriesnotin(product);
		model.addAttribute("categories", categories);
		return "oneproduct.jsp";
	}
	
	@PostMapping("/products/{id}/categoryid")	
	public String addcatsto(@PathVariable("id") Long id,@RequestParam("categoryid") Long categoryid, Model model) {
		Product thisproduct = productService.findOne(id);
		Category thiscategory= categoryService.findOne(categoryid);
		List <Category> productcats = thisproduct.getCategories();
		productcats.add(thiscategory);
		thisproduct.setCategories(productcats);
		productService.updateproduct(thisproduct);
		return "redirect:/products/{id}";
	}
}
		
		
	
	


