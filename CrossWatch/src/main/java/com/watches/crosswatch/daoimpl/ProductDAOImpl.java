package com.watches.crosswatch.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.watches.crosswatch.dao.ProductDAO;
import com.watches.crosswatch.model.Product;
import com.watches.crosswatch.model.viewProduct;


@Repository
public class ProductDAOImpl implements ProductDAO
{
	@Autowired
	SessionFactory sessionFactory;
	
	public void addProduct(Product product) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(product);	
	}

	public List<Product> getList() 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql="from Product";
		@SuppressWarnings("unchecked")
		List<Product> productList=session.createQuery(hql).getResultList();
		return productList;
	}

	public Product getProductById(int productId) 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql="from Product where productId="+productId;
		@SuppressWarnings("unchecked")
		List<Product> productListById = session.createQuery(hql).getResultList();
		return productListById.get(0);
	}

	public void deleteProduct(int productId) 
	{
		Product productToDelete = new Product();
		productToDelete.setProductId(productId);
		sessionFactory.getCurrentSession().delete(productToDelete);
		
	}

	public String getJsonProductList() 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql="from Product";
		@SuppressWarnings("unchecked")
		List<Product> productList=session.createQuery(hql).getResultList();
		
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonList = gson.toJson(productList);
		return jsonList;
		
	}
	
//	public void updateQuantity(int productId)
//	{
//		String hql = "update Product set productQuantity = productQuantity-1 where productId ="+productId;
//		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
//	}
	
	public viewProduct getViewProductById(int productId)
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from viewProduct where productId ="+productId;
		@SuppressWarnings("unchecked")
		List<viewProduct> getVPById= session.createQuery(hql).getResultList();
		return getVPById.get(0);
	}
	
	public void updateQuantity1(int productId, int quantity)
	{
		String hql="Update Product set productQuantity = productQuantity-"+quantity+"where productId ="+productId;
		System.out.println(productId +" "+quantity);
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
	}
}
