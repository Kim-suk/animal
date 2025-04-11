package com.test.animal.animal_hospital.service;

import java.util.ArrayList;
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
	public List<AnimalHospitalDTO> findHospitalsWithinRadius(double lat, double lon, double radius) {
		/*
		 * List<AnimalHospitalDTO> all = dao.getAllHospitals(); // 전체 병원
		 * List<AnimalHospitalDTO> nearby = new ArrayList<>();
		 * 
		 * for (AnimalHospitalDTO dto : all) {
		 * 
		 * if (dto.getLatitude() == null || dto.getLongitude() == null) { continue; }
		 * 
		 * double dist = haversine(lat, lon, dto.getLatitude(), dto.getLongitude()); if
		 * (dist <= radius) { nearby.add(dto); } }
		 */

        return dao.getAllHospitals();
	}

	@Override
	public AnimalHospitalDTO getHospitalById(int id) {
		// TODO Auto-generated method stub
		return dao.getHospitalById(id);
	}
	 
	private double haversine(double lat1, double lon1, double lat2, double lon2) {
        double R = 6371000; // 지구 반지름(m)
        double dLat = Math.toRadians(lat2 - lat1);
        double dLon = Math.toRadians(lon2 - lon1);

        double a = Math.sin(dLat / 2) * Math.sin(dLat / 2)
                 + Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2))
                 * Math.sin(dLon / 2) * Math.sin(dLon / 2);

        double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
        return R * c; // 거리 (m)
    }
	
}
