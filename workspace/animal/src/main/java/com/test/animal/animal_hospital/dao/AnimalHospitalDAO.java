package com.test.animal.animal_hospital.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.test.animal.animal_hospital.dto.AnimalHospitalDTO;

@Mapper
public interface AnimalHospitalDAO {

	void batchInsertHospitals(List<AnimalHospitalDTO> hospitalList);

}
