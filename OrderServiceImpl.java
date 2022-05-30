package com.rajTechProgramming.Medicare.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rajTechProgramming.Medicare.Entity.Orders;
import com.rajTechProgramming.Medicare.Repository.OrderRepository;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderRepository orderRepository;

	@Override
	public List<Orders> fetchOrderList() {
		// TODO Auto-generated method stub
		return orderRepository.findAll();
	}

	@Override
	public void saveOrder(Orders order) {
		System.out.println(orderRepository.save(order));
	}
	
	
}
