package com.test.animal.animal_hospital.service;

import java.util.List;

import com.test.animal.animal_hospital.dto.AnimalHospitalDTO;

public interface AnimalHospitalService {

    public List<AnimalHospitalDTO> findHospitalsWithinRadius(double lat, double lon, double radius);
    public AnimalHospitalDTO getHospitalById(int id);

}