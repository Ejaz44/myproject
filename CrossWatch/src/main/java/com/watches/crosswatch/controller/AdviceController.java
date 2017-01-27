package com.watches.crosswatch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.watches.crosswatch.service.BrandService;
import com.watches.crosswatch.service.CategoryService;

@ControllerAdvice("com.watches.crosswatch")
public class AdviceController 
{
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	BrandService brandService;
	
	@ModelAttribute
	public void dropdownData(Model model)
	{
		model.addAttribute("categoryListDrop", categoryService.getList());
		model.addAttribute("brandListDrop", brandService.getList());
	}
}
