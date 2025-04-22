package com.test.animal.animal_hospital.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.animal.animal_hospital.dto.AnimalHospitalDTO;

@Repository
public class AnimalHospitalDAOImpl implements AnimalHospitalDAO{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void batchInsertHospitals(List<AnimalHospitalDTO> hospitalList) {
		// TODO Auto-generated method stub
		sqlSession.insert("mapper.animalHospital.batchInsertHospitals", hospitalList);
	}

	@Override
	public List<AnimalHospitalDTO> findHospitalsWithin5km(Map<String, Object> params) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.animalHospital.findHospitalsWithin5km", params);
	}

}
	