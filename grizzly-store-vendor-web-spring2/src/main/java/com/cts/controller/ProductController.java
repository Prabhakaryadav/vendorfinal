package com.cts.controller;

import java.util.Comparator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.entity.Product;
import com.cts.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
    
	@Autowired
	ProductService productService;
	
	@GetMapping("/list")
	public String listAllProduct(Model model) {
     
     List<Product> prod=productService.listProducts();
     System.out.println("Productlist"+prod);
		model.addAttribute("products",prod);
		return "productlist";
	}
	@PostMapping("/saveProduct")
	public String addProduct(@ModelAttribute("product")Product product){
		productService.saveProduct(product);
		return "redirect:/product/list";
	}
	@GetMapping("/addproduct")
	public String viewProduct()
	{
		return "addproduct";
	}
	@GetMapping("/delete")
	public String deleteProduct( @RequestParam("id") int id)
	
	{
		productService.deleteProduct( id);
		return "redirect:/product/list";
		
	}
	@GetMapping("/view")
	public String viewproduct(@RequestParam("id")int id,Model model)
	{
		
		Product product=productService.viewproduct(id);
		model.addAttribute(product);
		return "view";
	}
	@GetMapping("/lowtohigh")
	public String sortASC(Model model)
	{
		List<Product> list=productService.listProducts();
		list.sort(Comparator.comparing(Product::getPrice));
		model.addAttribute("products",list);
		return "productlist";
	}
	@GetMapping("/hightolow")
	public String sortDESC(Model model)
	{
		List<Product> list=productService.listProducts();
		list.sort(Comparator.comparing(Product::getPrice).reversed());
		model.addAttribute("products",list);
		return "productlist";
	}
	
	@GetMapping("/logout")
	public String logoutpage(HttpServletRequest request,HttpServletResponse response)
	{
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		if(auth!=null)
		{
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/";
	}
}
