package com.rajTechProgramming.Medicare.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.rajTechProgramming.Medicare.Entity.Orders;
import com.rajTechProgramming.Medicare.Entity.Product;
import com.rajTechProgramming.Medicare.Service.CartService;
import com.rajTechProgramming.Medicare.Service.OrderService;

@RestController
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private CartService cartService;

	@RequestMapping("/payment")
	public ModelAndView saveOrder(Orders order) {
		
		ModelAndView mv = new ModelAndView();
		List<Product> products = cartService.getCartProducts();	
		System.out.println(products);
	Double totalPrice = 0.0;
		
		for (Product product : products) {
			totalPrice += product.getPrice();
		}
		
		order.setTotalPrice(totalPrice);
		
		orderService.saveOrder(order);
		List<Orders> orders = orderService.fetchOrderList();
		mv.setViewName("orders.jsp");
		mv.addObject("orderHistory", orders);
		cartService.deleteCartList();
		
		return mv;
		
	}
	
	@RequestMapping("/orderHistory")
	public void fetchOrderHistory() {
	
	List<Orders> orders = orderService.fetchOrderList();
		
	}
}
