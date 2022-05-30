package com.rajTechProgramming.Medicare.Service;

import java.util.List;
import java.util.Objects;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rajTechProgramming.Medicare.Entity.Customer;
import com.rajTechProgramming.Medicare.Repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerRepository customerRepository;

	@Override
	public Customer saveCustomer(Customer customer) {

		return customerRepository.save(customer);
	}

	@Override
	public List<Customer> getCustomersList() {
		// TODO Auto-generated method stub
		return customerRepository.findAll();
	}

	@Override
	public Customer getCustomerByID(int id) {
		// TODO Auto-generated method stub
		return customerRepository.findById(id).get();
	}

	@Override
	public String deleteCustomerById(int id) {
		String result = "Customer Account Deleted Sucessfull !!!";
		customerRepository.deleteById(id);

		return result;
	}

	@Override
	public Customer updateCustomer(int id, Customer customer) {

		Customer customerdB = customerRepository.findById(id).get();

		if (Objects.nonNull(customer.getEmail()) && !"".equalsIgnoreCase(customer.getEmail())) {
			customerdB.setEmail(customer.getEmail());
		}
		if (Objects.nonNull(customer.getName()) && !"".equalsIgnoreCase(customer.getName())) {
			customerdB.setName(customer.getName());
		}
		if (Objects.nonNull(customer.getPhoneNumber())) {
			customerdB.setPhoneNumber(customer.getPhoneNumber());
		}
		if (Objects.nonNull(customer.getPassword()) && !"".equalsIgnoreCase(customer.getPassword())) {
			customerdB.setPassword(customer.getPassword());
		}

		return customerRepository.save(customerdB);
	}

}
