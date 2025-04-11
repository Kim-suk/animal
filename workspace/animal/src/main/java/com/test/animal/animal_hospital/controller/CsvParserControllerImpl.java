package com.test.animal.animal_hospital.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.animal.animal_hospital.service.CsvParserService;

@Controller
public class CsvParserControllerImpl implements CsvParserController{
	
	@Autowired
	private CsvParserService cps;
	
	@Override
	@RequestMapping("/import-csv.do")
	@ResponseBody
	public String importCsv() {
		try {
            cps.importCsvToDatabase("C:\\spring_project\\data\\fulldata_02_03_01_P_animal_hospital.csv");
            return "CSV 데이터가 성공적으로 DB에 저장되었습니다!";
        } catch (Exception e) {
        	System.out.println(e.getMessage());
            return "CSV 데이터 저장 중 오류 발생: " + e.getMessage();
        }
	}
}
