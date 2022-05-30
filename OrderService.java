package com.rajTechProgramming.Medicare.Service;

import java.util.List;

import com.rajTechProgramming.Medicare.Entity.Orders;

public interface OrderService {

	List<Orders> fetchOrderList();

	void saveOrder(Orders order);

}
