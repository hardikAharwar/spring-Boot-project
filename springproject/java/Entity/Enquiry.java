package com.projectdemo.JpaProject10.Entity;


import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="enquiries")
public class Enquiry {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int enquiryId;
	
	@Column(name="enquirydate",nullable=false)
	private LocalDate enquiryDate;
	@Column(name="custname",nullable=false)
	private String custName;
	@Column(nullable=false)
	private String mobile;
	@Column(nullable=false)
	private String remarks;
	
	public int getEnquiryId() {
		return enquiryId;
	}
	public void setEnquiryId(int enquiryId) {
		this.enquiryId = enquiryId;
	}
	public LocalDate getEnquiryDate() {
		return enquiryDate;
	}
	public void setEnquiryDate(LocalDate enquiryDate) {
		this.enquiryDate = enquiryDate;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

}
