package com.watches.crosswatch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.watches.crosswatch.model.Category;
import com.watches.crosswatch.service.BrandService;
import com.watches.crosswatch.service.CategoryService;

@Controller
public class CrossWatchController {
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	BrandService brandService;
	@RequestMapping("/")
	public String hello(Model model) 
	{
		model.addAttribute("category", new Category());
		model.addAttribute("categoryListDrop", categoryService.getList());
		model.addAttribute("brandListDrop", brandService.getList());
		return "index";
	}
	
	@RequestMapping("/AboutUS")
	public String aboutUs(Model model)
	{
		return "AboutUS";
	}
	
//	@RequestMapping("/viewProduct")
//	public String viewProduct(Model model)
//	{
//		return "viewProduct";
//	}
}