package com.watches.crosswatch.config;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.watches.crosswatch.model.BillingAddress;
import com.watches.crosswatch.model.BuyNow;
import com.watches.crosswatch.model.ShippingAddress;

@Component
public class CheckoutHandler 
{
	public BuyNow initflow()
	{
		return new BuyNow();
	}
	
	public String validateShippingAddress(ShippingAddress shippingAddress, MessageContext messageContext)
	{
		String status = "success";
		
		if(shippingAddress.getFlatNo().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("flatNo").defaultText("Flat Number cannot be Empty").build());
			status = "failure";
		}
		
		if(shippingAddress.getStreetName().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("streetName").defaultText("Street Name cannot be Empty").build());
			status = "failure";
		}
		
		if(shippingAddress.getLocality().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("locality").defaultText("Locality Name cannot be Empty").build());
			status = "failure";
		}
		
		if(shippingAddress.getCity().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("city").defaultText("City Name cannot be empty").build());
			status = "failure";
		}
		
		if(shippingAddress.getState().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("state").defaultText("State Name cannot be empty").build());
			status = "failure";
		}
		
		if(shippingAddress.getPincode().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("pincode").defaultText("Pincode Cannot be Empty").build());
			status = "failure";
		}
		
		if(shippingAddress.getPincode().length()>6 && shippingAddress.getPincode().length()<6)
		{
			messageContext.addMessage(new MessageBuilder().error().source("pincode").defaultText("Incorrect Pincode").build());
			status = "failure";
		}
		
		return status;
	}
	
	public String validateBillingAddress(BillingAddress billingAddress, MessageContext messageContext)
	{
		String status = "success";
		
		if(billingAddress.getFlatNo().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("flatNo").defaultText("Flat Number Cannot be Empty").build());
			status = "failure";
		}
		
		if(billingAddress.getStreetName().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("streetName").defaultText("Street Name cannot be Empty").build());
			status = "failure";
		}
		
		if(billingAddress.getLocality().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("locality").defaultText("Locality Name cannot be Empty").build());
			status = "failure";
		}
		
		if(billingAddress.getCity().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("city").defaultText("City Name cannot be empty").build());
			status = "failure";
		}
		
		if(billingAddress.getState().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("state").defaultText("State Name cannot be empty").build());
			status = "failure";
		}
		
		if(billingAddress.getPincode().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("pincode").defaultText("Pincode Cannot be Empty").build());
			status = "failure";
		}
		
		if(billingAddress.getPincode().length()>6 && billingAddress.getPincode().length()<6)
		{
			messageContext.addMessage(new MessageBuilder().error().source("pincode").defaultText("Incorrect Pincode").build());
			status = "failure";
		}
		
		return status;
	}
	
}