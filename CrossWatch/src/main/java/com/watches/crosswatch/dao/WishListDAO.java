package com.watches.crosswatch.dao;

import java.util.List;

import com.watches.crosswatch.model.WishList;

public interface WishListDAO 
{
	public void addWishList(WishList wishList);
	
	public List<WishList> getWishList();
	
	public void deleteWishList(int wishListId);
}
