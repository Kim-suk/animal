package com.test.animal.animal_hospital.controller;

import com.test.animal.animal_hospital.dto.AnimalHospitalDTO;
import com.test.animal.animal_hospital.service.AnimalHospitalService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/api")
public class AnimalHospitalRestControllerImpl implements AnimalHospitalRestController {

	@Autowired
	private AnimalHospitalService hospitalService;

	// ✅ 병원 리스트 조회 (5km 이내)
	@RequestMapping(value = "/hospitals", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public List<AnimalHospitalDTO> getNearbyHospitals(
			@RequestParam(value = "latitude", required=false) Double latitude,
			@RequestParam(value = "longitude", required=false) Double longitude) {

		System.out.println("위도: " + latitude);
		System.out.println("경도: " + longitude);
		// 위도/경도 없으면 빈 리스트 반환 (예외 던지지 않음)
		if (latitude == null || longitude == null) {
			System.out.println("요청에 위도/경도 없음. 빈 결과 반환.");
			return Collections.emptyList(); // import java.util.Collections;
		}

		return hospitalService.findHospitalsWithinRadius(latitude, longitude, 500);
	}

	// ✅ 병원 상세 정보 조회
	@RequestMapping(value = "/hospital/{id}", method = RequestMethod.GET)
	@ResponseBody
	public AnimalHospitalDTO getHospitalDetail(@PathVariable("id") int id) {
		return hospitalService.getHospitalById(id);
	}


}
