package com.rajTechProgramming.Medicare.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rajTechProgramming.Medicare.Entity.Product;
import com.rajTechProgramming.Medicare.Repository.CartRepository;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartRepository cartRepository;

	@Override
	public void save(Product product) {
		cartRepository.save(product);				
	}

	@Override
	public List<Product> getCartProducts() {
		// TODO Auto-generated method stub
		return cartRepository.findAll();
	}

	@Override
	public void updateCartProducts(Product product) {
		
		cartRepository.save(product);
	}

	@Override
	public void deleteCartList() {
		cartRepository.deleteAll();
	}

	@Override
	public void deleteProductById(int productId) {
		cartRepository.deleteById(productId);	
	}


}
