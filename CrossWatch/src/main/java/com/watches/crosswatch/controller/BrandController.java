package com.watches.crosswatch.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.watches.crosswatch.model.Brand;
import com.watches.crosswatch.service.BrandService;
import com.watches.crosswatch.service.CategoryService;

@Controller
public class BrandController 
{
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	BrandService brandService;
	
	@RequestMapping("/Brand")
	public String Brand(Model model)
	{
		model.addAttribute("brand", new Brand());
		model.addAttribute("brandList", brandService.getJsonBrandList());
		model.addAttribute("categoryListDrop", categoryService.getList());
		model.addAttribute("brandListDrop", brandService.getList());
		return "/Brand";
	}
	
	@RequestMapping("/addBrand")
	public String addBrand(@Valid @ModelAttribute("brand") Brand brand, BindingResult bindingResult, Model model )
	{
		if(bindingResult.hasErrors())
		{
			model.addAttribute("brandList", brandService.getJsonBrandList());
			return "/Brand";
		}
		else
		{
			brandService.addBrand(brand);
			return "redirect:/Brand";
		}
	}
	
	
	@RequestMapping("editBrand-{brandId}")
	public String editBrand(Model model, @PathVariable("brandId") int brandId)
	{
		model.addAttribute("brand", brandService.getBrandById(brandId));
		return("Brand");
	}
	
	@RequestMapping("deleteBrand-{brandId}")
	public String deleteBrand(@PathVariable("brandId") int brandId)
	{
		brandService.deleteBrand(brandId);
		return "redirect:/Brand";
	}
}