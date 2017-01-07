package com.watches.crosswatch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.watches.crosswatch.daoimpl.UserDetailDAOImpl;
import com.watches.crosswatch.model.BillingAddress;
import com.watches.crosswatch.model.ShippingAddress;
import com.watches.crosswatch.model.UserDetail;

@Service
@Transactional
public class UserDetailService 
{
	@Autowired
	UserDetailDAOImpl userDetailDAOImpl;
	
	public void addUserDetail(UserDetail userDetail)
	{
		userDetailDAOImpl.addUserDetail(userDetail);
	}
	
	public void saveShippingAddress(ShippingAddress shippingAddress)
	{
		userDetailDAOImpl.saveShippingAddress(shippingAddress);
	}
	
	public void saveBillingAddress(BillingAddress billingAddress)
	{
		userDetailDAOImpl.saveBillingAddress(billingAddress);
	}
}
