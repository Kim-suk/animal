package com.test.animal.animal_hospital.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.test.animal.animal_hospital.service.CsvParserService;

@Controller
public class CsvParserControllerImpl implements CsvParserController {

    @Autowired
    private CsvParserService cps;

    @Autowired
    private ServletContext servletContext; // ✅ ServletContext 주입

    @Override
    @RequestMapping("/import-csv.do")
    @ResponseBody
    public String importCsv() {
        try {
            // ✅ 웹 루트 기준의 실제 경로 가져오기
            String realPath = servletContext.getRealPath("/resources/data/fulldata_02_03_01_P_animal_hospital.csv");
            cps.importCsvToDatabase(realPath);

            return "CSV 데이터가 성공적으로 DB에 저장되었습니다!";
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return "CSV 데이터 저장 중 오류 발생: " + e.getMessage();
        }
    }
}
