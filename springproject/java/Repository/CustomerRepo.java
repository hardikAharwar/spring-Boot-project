package com.projectdemo.JpaProject10.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.projectdemo.JpaProject10.Entity.Customer;


@Repository
public interface CustomerRepo extends JpaRepository<Customer, String> {

	Customer findByUserId(String userId);
}
