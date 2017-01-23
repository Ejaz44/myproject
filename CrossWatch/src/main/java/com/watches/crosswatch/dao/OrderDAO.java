package com.watches.crosswatch.dao;

import java.util.List;

import com.watches.crosswatch.model.Order;;

public interface OrderDAO 
{
public void addOrder(Order order);
	
	public List<Order> getOrderList();
	
	public void deleteOrder(int orderId);
}
