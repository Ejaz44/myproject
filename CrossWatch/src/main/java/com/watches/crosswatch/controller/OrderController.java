//package com.watches.crosswatch.controller;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import com.google.gson.Gson;
//import com.google.gson.GsonBuilder;
//import com.watches.crosswatch.model.CartItem;
//import com.watches.crosswatch.model.Order;
//import com.watches.crosswatch.model.WishList;
//import com.watches.crosswatch.service.CartItemService;
//import com.watches.crosswatch.service.OrderService;
//import com.watches.crosswatch.service.ProductService;
//import com.watches.crosswatch.service.UserDetailService;
//
//@Controller
//public class OrderController 
//{
//	@Autowired
//	CartItemService cartItemService;
//	
//	@Autowired
//	UserDetailService userDetailService;
//	
//	@Autowired
//	ProductService productService;
//	
//	@Autowired
//	CartItem cartItem;
//
//	@RequestMapping("order")
//	public String orderList(HttpSession httpSession)
//	{
//		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//		String userName = authentication.getName();
//		
//		int userId = userDetailService.getUserByName(userName).getUserId();
//		httpSession.setAttribute("userId", userId);
//		int cartItemId = httpSession.getAttribute("cartItemId");
//		
//		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
//		String order = gson.toJson(cartItemService.getCartItemById(cartItemId));
//	}
//	
//}
