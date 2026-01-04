package com.projectdemo.JpaProject10.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.projectdemo.JpaProject10.Entity.UsedCar;
import com.projectdemo.JpaProject10.repos.CarRepo;


@Service
public class UsedCarServices {
	
@Autowired
	private CarRepo carsrepo;

public String addNewCar(UsedCar car)
{
	carsrepo.save(car);
	return "success";
}

public List<UsedCar> findAll() {
    return carsrepo.findAll();
}

public boolean deleteCarById(int carid) {

    if (carsrepo.existsById(carid)) {
        carsrepo.deleteById(carid);
        return true;
    } else {
        return false;
    }
}

public UsedCar getCarById(int carid) {
    return carsrepo.findById(carid).orElse(null);
}

/*public void updateCar(UsedCar car) {
    carsrepo.save(car);
}*/

public void updateCar(int carId,UsedCar Car) {

	System.out.println("SERVICE carId = " + carId);

    UsedCar dbCar = carsrepo.findById(carId)
            .orElseThrow(() -> new RuntimeException("Car not found with id = " + carId));
    // copy fields (DO NOT touch ID)
    dbCar.setBrand(Car.getBrand());
    dbCar.setModel(Car.getModel());
    dbCar.setMfgYear(Car.getMfgYear());
    dbCar.setKilometers(Car.getKilometers());
    dbCar.setFuelType(Car.getFuelType());
    dbCar.setColor(Car.getColor());
    dbCar.setPrice(Car.getPrice());
    dbCar.setOwnerName(Car.getOwnerName());
    dbCar.setMobile(Car.getMobile());
    dbCar.setStatus(Car.getStatus());

    carsrepo.save(dbCar);   // ✅ GUARANTEED UPDATE
}


}
