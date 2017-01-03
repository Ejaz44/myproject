package com.watches.crosswatch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.watches.crosswatch.model.Category;
import com.watches.crosswatch.service.CategoryService;

@Controller
public class HelloController {
	
	@Autowired
	CategoryService categoryService;

	@RequestMapping("/")
	public String hello(Model model) 
	{
		model.addAttribute("category", new Category());
		model.addAttribute("categoryListDrop", categoryService.getList());
		return "index";
	}
	
	
}