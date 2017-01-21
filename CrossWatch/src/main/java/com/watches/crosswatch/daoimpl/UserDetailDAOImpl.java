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
	
	public UserDetail getUserById(int userId)
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from UserDetail where userId = "+userId;
		@SuppressWarnings("unchecked")
		List<UserDetail> userById = session.createQuery(hql).getResultList();
		return userById.get(0);
	}
	
	public ShippingAddress getShippingAddressById(int userId)
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from ShippingAddress where UserDetail_UserId = "+userId;
		@SuppressWarnings("unchecked")
		List<ShippingAddress> shippingById = session.createQuery(hql).getResultList();
		return shippingById.get(0);
	}
	
	public BillingAddress getBillingAddressById(int userId)
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from BillingAddress where UserDetail_UserId = "+userId;
		@SuppressWarnings("unchecked")
		List<BillingAddress> billingById = session.createQuery(hql).getResultList();
		return billingById.get(0);
	}
	
	public int checkUserName(String userName)
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from UserDetail where userName = "+"'"+userName+"'";
		@SuppressWarnings("unchecked")
		List<UserDetail> userList = session.createQuery(hql).getResultList();
		int count=userList.size();
		return count;
	}
	
	public int checkEmail(String emailId)
	{
		Session session = sessionFactory.getCurrentSession();
		String hql="from UserDetail where emailId = "+"'"+emailId+"'";
		@SuppressWarnings("unchecked")
		List<UserDetail> emailList = session.createQuery(hql).getResultList();
		int count = emailList.size();
		return count;
	}
}
