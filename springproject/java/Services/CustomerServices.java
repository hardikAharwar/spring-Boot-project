package com.projectdemo.JpaProject10.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.projectdemo.JpaProject10.Entity.Customer;
import com.projectdemo.JpaProject10.repos.CustomerRepo;

@Service
public class CustomerServices {
	
	@Autowired
	private CustomerRepo custmrepo;
	
	
	
	public String newRegister(Customer cust){
		
		if (custmrepo.existsById(cust.getUserId())) {
            throw new RuntimeException("User ID already exists");
        }
		custmrepo.save(cust);
		
		
		return "success";
		
	}
	
	public String loginUser(String userId, String password) {

        // 1️⃣ Find user
        Customer cust = custmrepo.findByUserId(userId);

        // 2️⃣ User not found
        if (cust == null) {
            return "USER_NOT_FOUND";
        }

        // 3️⃣ Password mismatch
        if (!cust.getPassword().equals(password)) {
            return "PASSWORD_INCORRECT";
        }

        // 4️⃣ Login success
        return "SUCCESS";
    }
	
	
	
	

}
