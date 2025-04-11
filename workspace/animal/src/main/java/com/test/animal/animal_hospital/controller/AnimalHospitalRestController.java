package com.test.animal.animal_hospital.controller;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.test.animal.animal_hospital.dto.AnimalHospitalDTO;

public interface AnimalHospitalRestController {
	 public List<AnimalHospitalDTO> getNearbyHospitals(
	            @RequestParam("latitude") Double latitude,
	            @RequestParam("longitude") Double longitude);
	 
	 public AnimalHospitalDTO getHospitalDetail(@PathVariable("id") int id);
}
