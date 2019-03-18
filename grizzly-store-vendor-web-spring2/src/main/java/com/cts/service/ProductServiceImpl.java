package com.cts.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.dao.ProductDAO;
import com.cts.entity.Product;

@Service("productService")
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	@Override
	
	public void saveProduct(Product product) {
		// TODO Auto-generated method stub
	
		productDAO.saveProduct(product);
	}

	@Override
	public List<Product> listProducts() {
		// TODO Auto-generated method stub
		return productDAO.listAllProduct();
	}

	@Override
	public Product getProduct(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void  deleteProduct(int id) {
		// TODO Auto-generated method stub
		productDAO.deleteproduct(id);
		
	}

	@Override
	public Product viewproduct(int id) {
		// TODO Auto-generated method stub
		return productDAO.viewproduct(id);
	}
	

}
