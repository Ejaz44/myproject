package com.watches.crosswatch.config;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.watches.crosswatch.model.BillingAddress;
import com.watches.crosswatch.model.ShippingAddress;
import com.watches.crosswatch.model.UserDetail;
import com.watches.crosswatch.service.UserDetailService;


@Component
public class RegistrationHandler 
{
	@Autowired
	ShippingAddress shippingAddress;
	
	@Autowired
	BillingAddress billingAddress;
	
	@Autowired
	UserDetailService userDetailService;
	
	public UserDetail initFlow()
	{
		return new UserDetail();
	}
	
	public String validateUserDetail(UserDetail userDetail, MessageContext messageContext)
	{
		String status="success";
		
		if(userDetail.getUserName().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("userName").defaultText("Username cannot be Empty").build());
			status="failure";
		}
		if(userDetail.getPassword().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("password").defaultText("Password cannot be Empty").build());
			status="failure";
		}
		else if(userDetail.getPassword().length()<6 || userDetail.getPassword().length()>10)
		{
			messageContext.addMessage(new MessageBuilder().error().source("password").defaultText("Password should have min 6 and max 10 characters").build());
			status="failure";
		}
		if(userDetail.getFirstName().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("firstName").defaultText("First Name cannot be Empty").build());
			status="failure";
		}
		if(userDetail.getLastName().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("lastName").defaultText("Last Name cannot be Empty").build());
			status="failure";
		}
		if(userDetail.getContactNumber().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("contactNumber").defaultText("Contact Number cannot be Empty").build());
			status="failure";
		}
		else if(userDetail.getContactNumber().length()<10 || userDetail.getContactNumber().length()>10)
		{
			messageContext.addMessage(new MessageBuilder().error().source("contactNumber").defaultText("Contact Number length is not correct").build());
			status="failure";
		}
		if(userDetail.getEmailId().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("emailId").defaultText("Email Id cannot be Empty").build());
			status="failure";
		}
//		else if(userDetail.getEmailId().contains("@") && userDetail.getEmailId().contains(".com"))
//		{
//			messageContext.addMessage(new MessageBuilder().error().source("emailId").defaultText("Invalid Email ID").build());
//			status ="failure"; 
//		}
		return status;
	}
	
	public String shippingAddress( ShippingAddress shippingAddress)
	{
		this.shippingAddress.setShippingAddressId(shippingAddress.getShippingAddressId());
		this.shippingAddress.setFlatNo(shippingAddress.getFlatNo());
		this.shippingAddress.setStreetName(shippingAddress.getStreetName());
		this.shippingAddress.setLocality(shippingAddress.getLocality());
		this.shippingAddress.setCity(shippingAddress.getCity());
		this.shippingAddress.setState(shippingAddress.getState());
		
		return "submit";
	}
	
	public String billingAddress(BillingAddress billingAddress)
	{
		this.billingAddress.setBillingAddressId(billingAddress.getBillingAddressId());
		this.billingAddress.setFlatNo(billingAddress.getFlatNo());
		this.billingAddress.setStreetName(billingAddress.getStreetName());
		this.billingAddress.setLocality(billingAddress.getLocality());
		this.billingAddress.setCity(billingAddress.getCity());
		this.billingAddress.setState(billingAddress.getState());
		
		return "submit";
	}
	
	public String registerUser(UserDetail userDetail, ShippingAddress shippingAddress, BillingAddress billingAddress)
	{
		userDetailService.addUserDetail(userDetail);
		
		shippingAddress.setUserDetail(userDetail);
		userDetail.setShippingAddress(shippingAddress);
		this.shippingAddress.setUserDetail(userDetail);
		
		billingAddress.setUserDetail(userDetail);
		userDetail.setBillingAddress(billingAddress);
		this.billingAddress.setUserDetail(userDetail);
		
		userDetail.setShippingAddress(shippingAddress);
		userDetail.setBillingAddress(billingAddress);
		userDetailService.saveShippingAddress(shippingAddress);
		userDetailService.saveBillingAddress(billingAddress);
		
		userDetailService.addUserDetail(userDetail);
		return "success";
	}
}
	