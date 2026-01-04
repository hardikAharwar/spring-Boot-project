package com.projectdemo.JpaProject10.Entity;
import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;

import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="carcustomers")
public class Customer {

	@Id
	
	@Column(name = "userid",nullable=false)
	private String userId;
	
	@Column(name="firstname",nullable=false)
	private String firstName;
	
	@Column(name="lastname",nullable=false)
	private String lastName;
	
	
	@Column(nullable=false)
	private String email;
	
	@Column(name="dateofbirth",nullable=false)
	private LocalDate dateOfBirth;
	
	@Column(name="phoneno",nullable=false)
	private String phoneNo;
	
	@Column(nullable=false)
	private String city;
	
	@Column(nullable=false)
	private String state;
	
	
	@Column(nullable=false)
	private String password;


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}


	public void setDateOfBirth(LocalDate dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}


	public String getPhoneNo() {
		return phoneNo;
	}


	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}