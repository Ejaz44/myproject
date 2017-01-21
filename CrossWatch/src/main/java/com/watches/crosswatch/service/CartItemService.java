package com.watches.crosswatch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.watches.crosswatch.daoimpl.CartItemDAOImpl;
import com.watches.crosswatch.model.CartItem;

@Service
@Transactional
public class CartItemService 
{
	@Autowired
	CartItemDAOImpl cartItemDAOImpl;
	
	public void addCartItem(CartItem cartItem)
	{
		cartItemDAOImpl.addCartItem(cartItem);
	}
	
	public CartItem getCartItemById(int cartItemId)
	{
		return cartItemDAOImpl.getCartItemById(cartItemId);
	}
	
	public void updateFlag(int cartItemId)
	{
		cartItemDAOImpl.updateFlag(cartItemId);
	}
	
	public List<CartItem> getCartList(int userId)
	{
		return cartItemDAOImpl.getCartList(userId);
	}
	
	public void deleteCartItemById(int cartItemId)
	{
		cartItemDAOImpl.deleteCartItemById(cartItemId);
	}
}
