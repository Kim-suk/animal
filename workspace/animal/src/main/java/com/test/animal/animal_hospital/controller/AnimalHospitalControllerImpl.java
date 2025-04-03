package com.test.animal.animal_hospital.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hospital")
public class AnimalHospitalControllerImpl implements AnimalHospitalController {

	@Override
	@RequestMapping("/map.do")
	public String showHospital() {
		// TODO Auto-generated method stub
		return "/hospital/map";
	}
}
