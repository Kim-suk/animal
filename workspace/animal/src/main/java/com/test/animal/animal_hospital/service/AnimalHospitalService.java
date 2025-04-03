package com.test.animal.animal_hospital.service;

import java.util.List;

import com.test.animal.animal_hospital.dto.AnimalHospitalDTO;

public interface AnimalHospitalService {

	List<AnimalHospitalDTO> findHospitalsWithin5km(double latitude, double longitude);

}
