package com.watches.crosswatch.dao;

import com.watches.crosswatch.model.BillingAddress;
import com.watches.crosswatch.model.ShippingAddress;
import com.watches.crosswatch.model.UserDetail;

public interface UserDetailDAO 
{
	public void addUserDetail(UserDetail userDetail);
	public void saveShippingAddress(ShippingAddress shippingAddress);
	public void saveBillingAddress(BillingAddress billingAddress);
}
