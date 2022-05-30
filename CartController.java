package com.rajTechProgramming.Medicare.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.rajTechProgramming.Medicare.Entity.Product;
import com.rajTechProgramming.Medicare.Service.CartService;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private Product product;

//@RequestParam("productName") String productName,@RequestParam("quantity") int quantity,@RequestParam("price") float price
	@RequestMapping("/addToCart")
	public ModelAndView productSavetoCart(@ModelAttribute Product product ) {

		cartService.save(product);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");	
		//getCartProducts();
		return mv;
	}
	
	@GetMapping("/cart")
	public ModelAndView getCartProducts() {
		ModelAndView mv = new ModelAndView();
		List<Product> products = cartService.getCartProducts();
		double totalPrice = 0.0;
		int cartCount =0;

		for (Product product : products) {
			cartCount++;
			totalPrice += product.getPrice();
		}
		mv.setViewName("cart.jsp");
		mv.addObject("cartProducts", products);
		mv.addObject("totalPrice", totalPrice);
		mv.addObject("cartCount", cartCount);
		System.out.println(totalPrice);
		return mv;
	}
	
	@RequestMapping("/deleteItem")
	public ModelAndView deleteProductById(@RequestParam int productId,Model request) {
		ModelAndView mv = new ModelAndView();
		cartService.deleteProductById(productId);
		int cartCount = (int)request.getAttribute("cartCount") ;
		cartCount--;
		mv.addObject("cartCount", cartCount);
		mv.setViewName("cart.jsp");
		return mv;
	}
	
	
	
}
