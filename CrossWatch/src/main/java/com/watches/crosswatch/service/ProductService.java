package com.watches.crosswatch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.watches.crosswatch.daoimpl.ProductDAOImpl;
import com.watches.crosswatch.model.Product;

@Service
@Transactional
public class ProductService 
{
	@Autowired
	ProductDAOImpl productDAOImpl;
	
	public void addProduct(Product product)
	{
		productDAOImpl.addProduct(product);
	}
	
	public List<Product> getList()
	{
		return productDAOImpl.getList();
	}
	
	public Product getProductById(int productId)
	{
		return productDAOImpl.getProductById(productId);
	}
	
	public void deleteProduct(int productId)
	{
		productDAOImpl.deleteProduct(productId);
	}
	
	public String getJsonProductList() 
	{
		return productDAOImpl.getJsonProductList();
	}
	
	public void updateQuantity(int productId)
	{
		productDAOImpl.updateQuantity(productId);
	}
}
