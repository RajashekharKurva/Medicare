package com.rajTechProgramming.Medicare.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rajTechProgramming.Medicare.Entity.Product;

@Repository
public interface CartRepository extends JpaRepository<Product, Integer>{

}
