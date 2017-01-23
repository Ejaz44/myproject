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
//import com.watches.crosswatch.service.OrderService;
//import com.watches.crosswatch.service.ProductService;
//import com.watches.crosswatch.service.UserDetailService;
//
//@Controller
//public class OrderController 
//{
//	@Autowired
//	OrderService orderService;
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
//	
//	@RequestMapping(value = "order-{productId}")
//	public String order(@PathVariable("productId") int productId, @ModelAttribute("order") Order order ,Model model, @RequestParam("userId") int userId, HttpSession httpSession)
//	{
//		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//		String userName = authentication.getName();
//		userId = userDetailService.getUserByName(userName).getUserId();
//		order.setCartId(userId);
//		order.setUserId(userId);
//		order.setProductId(productId);
//		
//		String productName = productService.getProductById(productId).getProductName();
//		order.setProductName(productName);
//		
//		int productPrice = productService.getProductById(productId).getProductPrice();
//		order.setProductPrice(productPrice);
//		order.setProductQuantity(cartItem.getProductQuantity());
//		
//		orderService.addOrder(order);
//		
//		return "redirect:/order";
//	}
//	
//	@RequestMapping(value = "order")
//	public String orderList(Model model, HttpSession httpSession)
//	{
//		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//		String userName = authentication.getName();
//		
//		userDetailService.getUserByName(userName);
//		int userId = userDetailService.getUserByName(userName).getUserId();
//		httpSession.setAttribute("userId", userId);
//		
//		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
//		String orderList = gson.toJson(orderService.getOrderList());
//		model.addAttribute("orderList", orderList);
//		
//		return "Order";
//	}
//	
//	@RequestMapping(value = "deleteOrder-{orderId}")
//	public String deleteCategory(@PathVariable("orderId") int orderId)
//	{
//		orderService.deleteOrder(orderId);
//		return "redirect:/order";
//	}
//}
