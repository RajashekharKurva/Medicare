package com.rajTechProgramming.Medicare.Entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Order_History")
public class Orders {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int OrderId;
	private Double totalPrice;
	
	public Orders( Double totalPrice) {

		this.totalPrice = totalPrice;
	}


	public  Orders() {
		
	}


	public int getOrderId() {
		return OrderId;
	}

	public void setOrderId(int orderId) {
		OrderId = orderId;
	}

	public Double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "Orders [OrderId=" + OrderId + ", totalPrice=" + totalPrice + "]";
	}
	
	
	
	
}
