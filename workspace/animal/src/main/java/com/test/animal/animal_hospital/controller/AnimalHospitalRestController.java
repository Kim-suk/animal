package com.test.animal.animal_hospital.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.test.animal.animal_hospital.dto.AnimalHospitalDTO;

public interface AnimalHospitalRestController {
	 public List<AnimalHospitalDTO> getNearbyHospitals(@RequestParam double latitude, @RequestParam double longitude);
}
