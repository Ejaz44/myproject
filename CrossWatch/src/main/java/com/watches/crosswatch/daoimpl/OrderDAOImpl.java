package com.watches.crosswatch.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.watches.crosswatch.dao.OrderDAO;
import com.watches.crosswatch.model.Order;

@Repository
public class OrderDAOImpl implements OrderDAO
{
	@Autowired
	SessionFactory sessionFactory;

	public void addOrder(Order order) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(order);
	}

	public List<Order> getOrderList() 
	{
		Session session = sessionFactory.getCurrentSession();
		String hql = "from CartItem where flag='true'";
		@SuppressWarnings("unchecked")
		List<Order> orderList =  session.createQuery(hql).getResultList();
		return orderList;
	}

	public void deleteOrder(int orderId) 
	{
		Order orderToDelete = new Order();
		orderToDelete.setOrderId(orderId);
		sessionFactory.getCurrentSession().delete(orderToDelete);	
	}
}
