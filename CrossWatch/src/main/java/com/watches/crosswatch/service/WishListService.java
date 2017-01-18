package com.watches.crosswatch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.watches.crosswatch.daoimpl.WishListDAOImpl;
import com.watches.crosswatch.model.WishList;

@Service
@Transactional
public class WishListService 
{
	@Autowired
	WishListDAOImpl wishListDAOImpl;
	
	public void addWishList(WishList wishList)
	{
		wishListDAOImpl.addWishList(wishList);
	}
	
	public List<WishList> getWishList()
	{
		return wishListDAOImpl.getWishList();
	}
	
	public void deleteWishList(int wishListId)
	{
		wishListDAOImpl.deleteWishList(wishListId);
	}
	
}
