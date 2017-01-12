package com.watches.crosswatch.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.watches.crosswatch.model.CartItem;
import com.watches.crosswatch.model.Product;
import com.watches.crosswatch.service.CartItemService;
import com.watches.crosswatch.service.ProductService;
import com.watches.crosswatch.service.UserDetailService;

@Controller
public class CartItemController 
{
	@Autowired
	CartItemService cartItemService;
	
	@Autowired
	UserDetailService userDetailService;
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("/buyNow-{productId}")
	public String buyNow(Model model, @PathVariable("productId") int productId, @ModelAttribute("cartItem") CartItem cartItem, @RequestParam("userId") int userId, Product product)
	{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userName = authentication.getName();
		userDetailService.getUserByName(userName);
		userId=userDetailService.getUserByName(userName).getUserId();
		cartItem.setCartId(userId);
		cartItem.setUserId(userId);
		cartItem.setFlag(false);
		cartItem.setProductQuantity(1);
		cartItem.setProductId(productId);
		int price = productService.getProductById(productId).getProductPrice();
		String productName = productService.getProductById(productId).getProductName();
		cartItem.setProductName(productName);
		cartItem.setProductPrice(price);
		
		cartItemService.addCartItem(cartItem);
		productService.updateQuantity(productId);
		
		return "/buyNow";
	}
}
