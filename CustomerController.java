package com.rajTechProgramming.Medicare.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.rajTechProgramming.Medicare.Entity.Customer;
import com.rajTechProgramming.Medicare.Service.CustomerService;

@RestController
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private Customer customer;
	
	@RequestMapping("/registration")
	public String saveCustomer( @RequestParam("fullName")String fullName,@RequestParam("email")String email,@RequestParam("phoneNumber") Long phoneNumber,@RequestParam("password")String password,@RequestParam("confirmPassword")String confirmPassword) {
		
		String registrationStatus="";
		
		if(password.equals(confirmPassword)) {
			
			customer.setName(fullName);
			customer.setEmail(email);
			customer.setPassword(confirmPassword);
			customer.setPhoneNumber(phoneNumber);
			
			customerService.saveCustomer(customer);
			registrationStatus="Registration Sucessful";
		}
		else {
			registrationStatus ="please enter password and confirmation password same";
		}
		
		return "registration.jsp";
	}
	
	@GetMapping("/customersList")
	public List<Customer> getCustomersList() {
		return customerService.getCustomersList() ;
		
	}
	
	@GetMapping("/customer/{id}")
	public Customer getCustomerByID(@PathVariable("id") int id) {
		return customerService.getCustomerByID(id) ;
		
	}
	
	@DeleteMapping("/deleteCustomer/{id}")
	public String deleteCustomerById(@PathVariable("id") int id) {
		
		return customerService.deleteCustomerById(id);
		
	}
	
	@PutMapping("/updateCustomer/{id}")
	public Customer updateCustomer(@PathVariable("id") int id , @RequestBody Customer customer) {
		
		return customerService.updateCustomer(id,customer);
		
	}
	
	
}
