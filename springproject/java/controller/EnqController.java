package com.projectdemo.JpaProject10.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.projectdemo.JpaProject10.Entity.Enquiry;
import com.projectdemo.JpaProject10.Entity.UsedCar;
import com.projectdemo.JpaProject10.Services.EnquiryServics;
import com.projectdemo.JpaProject10.Services.UsedCarServices;

@Controller
public class EnqController {
	
	
	@Autowired
	private EnquiryServics enqServices;

	@GetMapping("/newenq")
	public String newEnq()
	{
		return "NewEnquiry.html";
	}
	@PostMapping("/saveenq")
	public String saveEnq(Enquiry enq,Model m)
	{
		enqServices.addNewEnquiry(enq);
		m.addAttribute("enquiry", enq);
		return "NewEnquiryAdded.jsp";
	}
}
