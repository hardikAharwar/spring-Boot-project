package com.projectdemo.JpaProject10.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectdemo.JpaProject10.Entity.Customer;
import com.projectdemo.JpaProject10.Services.CustomerServices;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class custmcontroller {
	
	@Autowired
	private CustomerServices custmServices;
	
	
	@PostMapping("/newRegister")
	public String register(Customer cust,Model m) {
		
		String id=cust.getUserId();
		System.out.println(id);
		m.addAttribute("id",id);
		
		
		custmServices.newRegister(cust);
		
		
		return "userLoginSuccess.jsp";
	}
	
	
	@PostMapping("/userLogin")
    public String userLogin(
            @RequestParam String userId,
            @RequestParam String password,
            HttpServletRequest request) {

        String result = custmServices.loginUser(userId, password);

        if (result.equals("USER_NOT_FOUND")) {
            request.setAttribute("error",
                    "User ID not found. Please check or create an account.");
            return "userlogin.jsp";
        }

        if (result.equals("PASSWORD_INCORRECT")) {
            request.setAttribute("error",
                    "Password is incorrect. Please try again.");
            return "userlogin.jsp";
        }
        
        HttpSession session = request.getSession(true); // creates new session
        session.setAttribute("loggedInUser", userId);
        session.setMaxInactiveInterval(30 * 60); // 30 minutes

        // ✅ SUCCESS
        return "userDashboard.jsp";
    }
	
	
	
}
