package com.rajTechProgramming.Medicare.Service;

import java.util.List;

import com.rajTechProgramming.Medicare.Entity.Product;

public interface CartService {

	void save(Product product);

	List<Product> getCartProducts();

	void updateCartProducts(Product product);
	
	void deleteCartList();

	void deleteProductById(int productId);


}
