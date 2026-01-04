package com.projectdemo.JpaProject10.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.projectdemo.JpaProject10.Entity.Enquiry;
import com.projectdemo.JpaProject10.repos.EnquiryRepo;

@Service
public class EnquiryServics {
	
	@Autowired
	private EnquiryRepo enqrepo;
	public String addNewEnquiry(Enquiry e)
	{
		enqrepo.save(e);
		return "success";
	}
	

}
