package com.watches.crosswatch.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.watches.crosswatch.model.Brand;
import com.watches.crosswatch.model.Category;
import com.watches.crosswatch.model.Product;
import com.watches.crosswatch.model.ProductDetail;
import com.watches.crosswatch.model.SubCategory;
import com.watches.crosswatch.model.Supplier;
import com.watches.crosswatch.service.BrandService;
import com.watches.crosswatch.service.CategoryService;
import com.watches.crosswatch.service.ProductService;
import com.watches.crosswatch.service.SubCategoryService;
import com.watches.crosswatch.service.SupplierService;

@Controller
public class ProductController 
{
	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryService categoryService;
	
	@Autowired
	SubCategoryService subCategoryService;
	
	@Autowired
	SupplierService supplierService;
	
	@Autowired
	BrandService brandService;
	
	@RequestMapping("/Product")
	public String product(Model model)
	{
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryService.getList());
		model.addAttribute("subCategory", new SubCategory());
		model.addAttribute("subCategoryList", subCategoryService.getList());
		model.addAttribute("brand", new Brand());
		model.addAttribute("brandList", brandService.getList());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("supplierList", supplierService.getList());
		model.addAttribute("product", new Product());
		model.addAttribute("productList", productService.getJsonProductList());
		model.addAttribute("categoryListDrop", categoryService.getList());
		model.addAttribute("brandListDrop", brandService.getList());
		return "/Product";
	}
	
	@RequestMapping("/addProduct")
	public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult bindingResult, Model model, @RequestParam("file") List<MultipartFile> productImage)
	{
		if(bindingResult.hasErrors())
		{
			model.addAttribute("productList", productService.getJsonProductList());
			return "/Product";
		}
		else
		{
		Category category = categoryService.getCategoryByName(product.getCategory().getCategoryName());
		product.setCategory(category);
		product.setCategoryId(category.getCategoryId());
		
		SubCategory subCategory = subCategoryService.getSubCategoryByName(product.getSubCategory().getSubCategoryName());
		product.setSubCategory(subCategory);
		product.setSubCategoryId(subCategory.getSubCategoryId());
		
		Supplier supplier = supplierService.getSupplierByName(product.getSupplier().getSupplierName());
		product.setSupplier(supplier);
		product.setSupplierId(supplier.getSupplierId());
		
		Brand brand = brandService.getBrandByName(product.getBrand().getBrandName());
		product.setBrand(brand);
		product.setBrandId(brand.getBrandId());
		
		productService.addProduct(product);
		
		List <MultipartFile> file = productImage;
		for(int i=0; i <= file.size();i++)
		try
		{
			MultipartFile fileDetails = file.get(i);
			String path ="D:\\My Project\\CrossWatch\\src\\main\\webapp\\resources\\images\\";
			path = path+String.valueOf(product.getProductId())+"-"+i+".jpg";
			File f = new File(path);
			byte[] bytes;
		bytes = fileDetails.getBytes();
		FileOutputStream fos = new FileOutputStream(f);
		BufferedOutputStream bos = new BufferedOutputStream(fos);
		bos.write(bytes);
		bos.close();
		System.out.println("file uploaded successfully.");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "redirect:/Product";
		}
	}
	
	@RequestMapping("editProduct-{productId}")
	public String editProduct(Model model, @PathVariable("productId") int productId)
	{
		model.addAttribute("categoryList", categoryService.getList());
		model.addAttribute("subCategoryList", subCategoryService.getList());
		model.addAttribute("supplierList", supplierService.getList());
		model.addAttribute("brandList", brandService.getList());
		model.addAttribute("product", productService.getProductById(productId));
		
		return "/Product";
	}
	
	@RequestMapping("deleteProduct-{productId}")
	public String deleteProduct(@PathVariable("productId") int productId)
	{
		productService.deleteProduct(productId);
		return "redirect:/Product";
	}
	
	@RequestMapping("viewProduct-{productId}")
	public String viewProduct(Model model, @PathVariable("productId") int productId)
	{
		
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String pdt = gson.toJson(productService.getProductById(productId));
		model.addAttribute("product", pdt);
//		model.addAttribute("p", product);
		model.addAttribute("categoryListDrop", categoryService.getList());
		model.addAttribute("brandListDrop", brandService.getList());
		
		return "viewProduct";
	}
}