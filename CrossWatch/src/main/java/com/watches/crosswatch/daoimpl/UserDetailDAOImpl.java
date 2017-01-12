package com.watches.crosswatch.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.watches.crosswatch.dao.UserDetailDAO;
import com.watches.crosswatch.model.BillingAddress;
import com.watches.crosswatch.model.Cart;
import com.watches.crosswatch.model.ShippingAddress;
import com.watches.crosswatch.model.User;
import com.watches.crosswatch.model.UserDetail;
import com.watches.crosswatch.model.UserRole;

@Repository
public class UserDetailDAOImpl implements UserDetailDAO
{
	@Autowired
	SessionFactory sessionFactory;
	
	public void addUserDetail(UserDetail userDetail) 
	{
		Session session = sessionFactory.getCurrentSession();
		
		User user = new User();
		user.setUserId(userDetail.getUserId());
		user.setUserName(userDetail.getUserName());
		user.setPassword(userDetail.getPassword());
		user.setEnabled(true);
		
		session.saveOrUpdate(user);
		
		Cart cart = new Cart();
		cart.setCartId(user.getUserId());
		cart.setUserId(user.getUserId());
		
		session.saveOrUpdate(cart);
		
		UserRole userRole = new UserRole();
		userRole.setUserId(user.getUserId());
		userRole.setRoleId(1);
		
		session.saveOrUpdate(userRole);
		
//		userDetail.getBillingAddress().setUserDetail(userDetail);
//		session.saveOrUpdate(userDetail.getBillingAddress());
//		
//		userDetail.getShippingAddress().setUserDetail(userDetail);
//		session.saveOrUpdate(userDetail.getShippingAddress());
		
		userDetail.setUserId(user.getUserId());
		userDetail.setCartId(cart.getCartId());
		session.saveOrUpdate(userDetail);
		
		session.flush();
	}
	
	public void saveShippingAddress(ShippingAddress shippingAddress)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
	}
	
	public void saveBillingAddress(BillingAddress billingAddress)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(billingAddress);
	}
	
	public UserDetail getUserByName(String userName)
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from UserDetail where userName = "+"'"+userName+"'";
		@SuppressWarnings("unchecked")
		List<UserDetail> userNameById = session.createQuery(hql).getResultList();
		return userNameById.get(0);
	}
}
