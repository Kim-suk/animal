package com.test.animal.animal_hospital.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.test.animal.animal_hospital.dto.AnimalHospitalDTO;

@Mapper
public interface AnimalHospitalDAO {

	void batchInsertHospitals(List<AnimalHospitalDTO> hospitalList);

	List<AnimalHospitalDTO> findHospitalsWithin5km(Map<String, Object> params);


}
