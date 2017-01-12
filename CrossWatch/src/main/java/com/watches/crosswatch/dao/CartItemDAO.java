package com.watches.crosswatch.dao;

import com.watches.crosswatch.model.CartItem;

public interface CartItemDAO 
{
	public void addCartItem(CartItem cartItem);
	
	public CartItem getCartItemById(int cartItemId);
}
