package com.watches.crosswatch.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.watches.crosswatch.model.WishList;
import com.watches.crosswatch.service.ProductService;
import com.watches.crosswatch.service.UserDetailService;
import com.watches.crosswatch.service.WishListService;

@Controller
public class WishListController 
{
	@Autowired
	WishListService wishListService;
	
	@Autowired
	UserDetailService userDetailService;
	
	@Autowired
	ProductService productService;
	
	@RequestMapping(value = "wishlist-{productId}")
	public String wishlist(@PathVariable("productId") int productId, @ModelAttribute("wishList") WishList wishList,Model model, @RequestParam("userId") int userId, HttpSession httpSession)
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userName = authentication.getName();
		userId = userDetailService.getUserByName(userName).getUserId();
		wishList.setCartId(userId);
		wishList.setUserId(userId);
		wishList.setProductId(productId);
		
		String productName = productService.getProductById(productId).getProductName();
		wishList.setProductName(productName);
		
		int productPrice = productService.getProductById(productId).getProductPrice();
		wishList.setProductPrice(productPrice);
		wishList.setProductQuantity(1);
		
		wishListService.addWishList(wishList);
		
		return "redirect:/wishList";
	}
	
	@RequestMapping(value = "wishList")
	public String wishList(Model model, HttpSession httpSession)
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userName = authentication.getName();
		
		userDetailService.getUserByName(userName);
		int userId = userDetailService.getUserByName(userName).getUserId();
		httpSession.setAttribute("userId", userId);
		
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String wishList = gson.toJson(wishListService.getWishList());
		model.addAttribute("wishList", wishList);
		
		return "WishList";
	}
	
	@RequestMapping(value = "deleteWishList-{wishListId}")
	public String deleteWishList(@PathVariable("wishListId") int wishListId)
	{
		wishListService.deleteWishList(wishListId);
		return "redirect:/wishList";
	}
}	