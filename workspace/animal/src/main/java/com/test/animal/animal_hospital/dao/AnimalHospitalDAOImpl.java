package com.test.animal.animal_hospital.dao;

import java.util.List;

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

}
	