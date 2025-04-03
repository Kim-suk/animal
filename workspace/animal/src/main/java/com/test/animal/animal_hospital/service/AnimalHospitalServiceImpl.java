package com.test.animal.animal_hospital.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.test.animal.animal_hospital.dao.AnimalHospitalDAO;
import com.test.animal.animal_hospital.dto.AnimalHospitalDTO;

@Service
public class AnimalHospitalServiceImpl implements AnimalHospitalService{
	
	 @Autowired
	 private AnimalHospitalDAO dao;
	 
	@Override
	public List<AnimalHospitalDTO> findHospitalsWithin5km(double latitude, double longitude) {
		Map<String, Object> params = new HashMap<>();
        params.put("lat", latitude);
        params.put("lng", longitude);
        return dao.findHospitalsWithin5km(params);
	}
}
