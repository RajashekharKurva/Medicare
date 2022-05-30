package com.rajTechProgramming.Medicare.Service;

import java.util.List;

import com.rajTechProgramming.Medicare.Entity.Customer;

public interface CustomerService {

	public Customer saveCustomer(Customer customer);

	public  List<Customer> getCustomersList();

	public Customer getCustomerByID(int id);

	public String deleteCustomerById(int id);

	public Customer updateCustomer(int id, Customer customer);

}
