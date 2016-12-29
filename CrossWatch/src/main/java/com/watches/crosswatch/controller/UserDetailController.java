package com.watches.crosswatch.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.watches.crosswatch.model.BillingAddress;
import com.watches.crosswatch.model.ShippingAddress;
import com.watches.crosswatch.model.UserDetail;
import com.watches.crosswatch.service.UserDetailService;

@Controller
public class UserDetailController 
{
	@Autowired
	UserDetailService userDetailService;
	
	@RequestMapping("/userRegistration")
	public String userDetail(Model model)
	{
		UserDetail userDetail=new UserDetail();
		ShippingAddress shippingAddress = new ShippingAddress();
		BillingAddress billingAddress = new BillingAddress();
		
		userDetail.setBillingAddress(billingAddress);
		userDetail.setShippingAddress(shippingAddress);
		model.addAttribute("userDetail", userDetail);
		return "/UserRegistration";
	}
	
	
	@RequestMapping("/addUserRegistration")
	public String addUserDetail(@ModelAttribute("userDetail") UserDetail userDetail)
	{
		userDetailService.addUserDetail(userDetail);
		
		return "redirect:/userRegistration";
	}
	
	@RequestMapping("/userLogin")
	public String userLogin()
	{
		return "/UserLogin";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response)
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth != null)
		{
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/";
	}
}
