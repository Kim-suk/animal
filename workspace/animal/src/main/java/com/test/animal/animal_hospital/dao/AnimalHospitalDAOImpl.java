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
	public void insertHospitals(List<AnimalHospitalDTO> list) {
		// TODO Auto-generated method stub
		 sqlSession.insert("mapper.animalHospital.insertHospitals", list);
	}


	@Override
	public List<AnimalHospitalDTO> getAllHospitals() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.animalHospital.getAllHospitals");
	}


	@Override
	public AnimalHospitalDTO getHospitalById(int id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.animalHospital.getHospitalById", id);
	}

}
	