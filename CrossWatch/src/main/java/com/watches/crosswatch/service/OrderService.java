package com.watches.crosswatch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.watches.crosswatch.daoimpl.OrderDAOImpl;
import com.watches.crosswatch.model.Order;

@Service
@Transactional
public class OrderService
{
	@Autowired
	OrderDAOImpl orderDAOImpl;
	
	public void addOrder(Order order)
	{
		orderDAOImpl.addOrder(order);
	}
	
	public List<Order> getOrderList()
	{
		return orderDAOImpl.getOrderList();
	}
	
	public void deleteOrder(int orderId) 
	{
		orderDAOImpl.deleteOrder(orderId);
	}
}
