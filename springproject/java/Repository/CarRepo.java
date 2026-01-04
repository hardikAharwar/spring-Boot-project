package com.projectdemo.JpaProject10.repos;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.projectdemo.JpaProject10.Entity.UsedCar;

@Repository
public interface CarRepo extends JpaRepository<UsedCar,Integer> {
	
	Optional<UsedCar> findById(Integer carid);
	
	List<UsedCar> findByBrand(String brand);
	List<UsedCar> findByModel(String model);
	List<UsedCar> findByMfgYear(Integer mfgyear);
	List<UsedCar> findByKilometers(Integer kilometers);
	List<UsedCar> findByFuelType(String fueltype);
	List<UsedCar> findByColor(String color);
	List<UsedCar> findByPrice(String price);
	List<UsedCar> findByOwnerName(String ownername);
	List<UsedCar> findByMobile(String mobile);
	List<UsedCar> findByStatus(String status);

}
