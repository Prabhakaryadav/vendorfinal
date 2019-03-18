package com.cts.dao;

import java.util.List;

import com.cts.entity.Product;

public interface ProductDAO  {
	public void saveProduct(Product product);
	public List<Product> listAllProduct();
	public void deleteproduct(int id);
	public Product viewproduct(int id);
	

}
