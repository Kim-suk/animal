package com.test.animal.animal_hospital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.animal.animal_hospital.dto.AnimalHospitalDTO;
import com.test.animal.animal_hospital.service.AnimalHospitalService;

@Controller
@RequestMapping("/api/findHospitals")
public class AnimalHospitalRestControllerImpl implements AnimalHospitalRestController{
	
	@Autowired
	private AnimalHospitalService ahs;

	@Override
	@RequestMapping("/nearby")
	public List<AnimalHospitalDTO> getNearbyHospitals(
				@RequestParam("latitude") double latitude, 
                @RequestParam("longitude") double longitude) {
		// TODO Auto-generated method stub 	
		return ahs.findHospitalsWithin5km(latitude, longitude);
	}
	
	

}
