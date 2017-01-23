package com.watches.crosswatch.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.watches.crosswatch.dao.WishListDAO;
import com.watches.crosswatch.model.WishList;

@Repository
public class WishListDAOImpl implements WishListDAO
{
	@Autowired
	SessionFactory sessionFactory;

	public void addWishList(WishList wishList) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(wishList);
	}

	public List<WishList> getWishList() 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from WishList";
		@SuppressWarnings("unchecked")
		List<WishList> wishList =  session.createQuery(hql).getResultList();
		return wishList;
	}

	public void deleteWishList(int wishListId) 
	{
		WishList wishListToDelete = new WishList();
		wishListToDelete.setWishListId(wishListId);
		sessionFactory.getCurrentSession().delete(wishListToDelete);
	}
}