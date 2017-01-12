package com.watches.crosswatch.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.watches.crosswatch.model.Category;
import com.watches.crosswatch.service.BrandService;
import com.watches.crosswatch.service.CategoryService;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	BrandService brandService;
	
	@RequestMapping("/Category")
	public String category(Model model)
	{
		model.addAttribute("category", new Category());
		//model.addAttribute("categoryList", categoryService.getList());
		model.addAttribute("categoryList", categoryService.getJsonList());
		model.addAttribute("categoryListDrop", categoryService.getList());
		model.addAttribute("brandListDrop", brandService.getList());
		return "/Category";
	}
	
	@RequestMapping("/addCategory")
	public String addCategory(@Valid @ModelAttribute("category") Category category, BindingResult result, Model model)
	{	
		if(result.hasErrors())
		{
			model.addAttribute("categoryList", categoryService.getJsonList());
			return "/Category";
		}
		else
		{
		categoryService.addCategory(category);
		return "redirect:/Category";
		}
	}
	
	@RequestMapping("/editCategory-{categoryId}")
	public String editCategory(Model model, @PathVariable("categoryId") int categoryId)
	{
		model.addAttribute("category", categoryService.getCategoryById(categoryId));
		return "Category";
	}
	
	@RequestMapping("/deleteCategory-{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") int categoryId)
	{
		categoryService.deleteCategory(categoryId);
		return "redirect:/Category";
	}
}
