package com.watches.crosswatch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.watches.crosswatch.model.Category;
import com.watches.crosswatch.service.BrandService;
import com.watches.crosswatch.service.CategoryService;
import com.watches.crosswatch.service.ProductService;

@Controller
public class CrossWatchController {
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	BrandService brandService;
	@RequestMapping("/")
	public String hello(Model model) 
	{
		model.addAttribute("category", new Category());
		
		
		model.addAttribute("productList", productService.getJsonProductList());
		return "index";
	}
	
	@RequestMapping("/AboutUS")
	public String aboutUs(Model model)
	{
		return "AboutUS";
	}
	
	@RequestMapping("/ContactUs")
	public String contactUs(Model model)
	{
		return "ContactUs";
	}
	
	@RequestMapping("/payment")
	public String payment(Model model)
	{
		return "Payment";
	}
	
	@RequestMapping("/thankyou")
	public String thankyou(Model model)
	{
		return "Thankyou";
	}
	
	@RequestMapping("/emailSubscription")
	public String email(Model model)
	{
		return "emailSubscription";
	}
//	@RequestMapping("/viewProduct")
//	public String viewProduct(Model model)
//	{
//		return "viewProduct";
//	}
}