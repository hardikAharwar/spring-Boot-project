package com.projectdemo.JpaProject10.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.projectdemo.JpaProject10.Entity.Enquiry;
import com.projectdemo.JpaProject10.Entity.UsedCar;
import com.projectdemo.JpaProject10.Services.EnquiryServics;
import com.projectdemo.JpaProject10.Services.UsedCarServices;

@Controller
public class carcontroller {
	
	@Autowired
	private UsedCarServices carServices;
	
	
	
	
	
	
	@GetMapping("/")
	public String home() {
		return "index.jsp";
	}
	
	
	@PostMapping("/login")
	public String login(String username,String password)
	{
		String page="";
		if(username.equals("Hardik") && password.equals("Hardik@2405"))
			page="AdminPanel.jsp";
		else
			page="LoginFailed.jsp";
		
		return page;
	}
	
	
	
	
	@GetMapping("/newcar")
	public String newCar()
	{
		return "NewCarEntry.html";
	}
	
	
	@PostMapping("/savecar")
	public String saveCar(UsedCar car)
	{
		carServices.addNewCar(car);
		return "NewCarAdded.jsp";
	}
	
	
	
	@GetMapping("/carlist")
	public String showlist( Model m) {
		
		List<UsedCar> list=carServices.findAll();
		
		m.addAttribute("allcar", list);

		return "carslist.jsp";
	}
	
	
	@GetMapping("/deletecar")
	public String Delete() {
		return "delete.html";
	}
	
	
	@PostMapping("/del")
	public String deleteCar( @RequestParam int carid,Model m) {
		
		boolean ans= carServices.deleteCarById(carid);
		m.addAttribute("id",carid);
		if(ans) {
			
			return "deleted.jsp";
		}
		else {
			return "notexists.jsp";
		}
		
	}
		@GetMapping("/modify")
		public String Modify() {
			
			return "modify.jsp";
		
		
	}
	
		
		@GetMapping("/enterid")
		public String enterId(@RequestParam int carid,Model m) {
			
			UsedCar car = carServices.getCarById(carid);
			
			if (car == null) {
	            return "notfound.jsp";
	        }

	        m.addAttribute("car", car);
			return "displaydetails.jsp";
		
		
	}
		@PostMapping("/updatecar")
	    public String updateCar(@RequestParam int carId,UsedCar Car) {
			
			
	        carServices.updateCar(carId,Car);
	        return "updated.jsp";
	    }
	

}
