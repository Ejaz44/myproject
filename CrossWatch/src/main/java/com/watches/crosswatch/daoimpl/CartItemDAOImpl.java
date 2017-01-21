package com.watches.crosswatch.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.watches.crosswatch.dao.CartItemDAO;
import com.watches.crosswatch.model.CartItem;
import com.watches.crosswatch.model.Category;

@Repository
public class CartItemDAOImpl implements CartItemDAO
{
	@Autowired
	SessionFactory sessionFactory;

	public void addCartItem(CartItem cartItem) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
	}
	
	public CartItem getCartItemById(int cartItemId) 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from CartItem where cartItemId = "+cartItemId;
		@SuppressWarnings("unchecked")
		List<CartItem> cartItemById = session.createQuery(hql).getResultList();
		return cartItemById.get(0);
	}
	
	public void updateFlag(int cartItemId)
	{
		String hql = "update CartItem set flag = true where cartItemId ="+cartItemId;
		sessionFactory.getCurrentSession().createQuery(hql).executeUpdate();
	}
	
	public List<CartItem> getCartList(int userId)
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from CartItem where userId="+userId;
		@SuppressWarnings("unchecked")
		List<CartItem> cartList = session.createQuery(hql).getResultList();
		return cartList;
	}
	
	public void deleteCartItemById(int cartItemId) 
	{
		CartItem cartItemToDelete = new CartItem();
		cartItemToDelete.setCartItemId(cartItemId);
		sessionFactory.getCurrentSession().delete(cartItemToDelete);
	}
	
}
