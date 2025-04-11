package com.test.animal.animal_hospital.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.test.animal.animal_hospital.dto.AnimalHospitalDTO;

@Mapper
public interface AnimalHospitalDAO {

	public void insertHospitals(List<AnimalHospitalDTO> list);

	public List<AnimalHospitalDTO> getAllHospitals();
	public AnimalHospitalDTO getHospitalById(int id);


}
