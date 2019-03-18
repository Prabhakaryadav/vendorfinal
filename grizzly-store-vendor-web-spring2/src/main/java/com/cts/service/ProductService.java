package com.cts.service;

import java.util.List;

import com.cts.entity.Product;

public interface ProductService {
	void saveProduct(Product product);
	List<Product> listProducts();
	public Product getProduct(int id);
	public void deleteProduct(int id);
	Product viewproduct(int id);
	

}
