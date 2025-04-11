package com.test.animal.animal_hospital.service;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.csv.CSVRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.animal.animal_hospital.dao.AnimalHospitalDAO;
import com.test.animal.animal_hospital.dto.AnimalHospitalDTO;

import java.io.FileReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

@Service
public class CsvParserServiceImpl implements CsvParserService {

    @Autowired
    private AnimalHospitalDAO dao;

    private static final int BATCH_SIZE = 10;

    @Override
    @Transactional
    public void importCsvToDatabase(String filePath) {
        try (Reader reader = new FileReader(filePath);
             CSVParser csvParser = new CSVParser(reader, CSVFormat.EXCEL.withFirstRecordAsHeader())) {

            List<AnimalHospitalDTO> hospitalList = new ArrayList<>();

            for (CSVRecord record : csvParser) {
                try {
                    AnimalHospitalDTO hospital = new AnimalHospitalDTO();

                    hospital.setId(Integer.parseInt(record.get("지점코드")));
                    hospital.setName(record.get("사업장명"));
                    hospital.setAddress(record.get("도로명전체주소"));
                    hospital.setPhone(record.get("소재지전화"));

                    String yStr = record.get("좌표정보y(epsg5174)").trim(); // 위도
                    String xStr = record.get("좌표정보x(epsg5174)").trim(); // 경도

                    double x = xStr.isEmpty() ? 0.0 : Double.parseDouble(xStr);
                    double y = yStr.isEmpty() ? 0.0 : Double.parseDouble(yStr);

                    // 좌표 변환
                    double[] latlon = CoordinateConverter.convert(x, y); // 위도, 경도 변환
                    hospital.setLatitude(latlon[1]);   // 위도
                    hospital.setLongitude(latlon[0]);  // 경도

                    hospitalList.add(hospital);

                    if (hospitalList.size() >= BATCH_SIZE) {
                        dao.insertHospitals(hospitalList);
                        hospitalList.clear();
                    }

                } catch (Exception innerEx) {
                    System.err.println("⚠️ 레코드 파싱 오류: " + innerEx.getMessage());
                    // continue 해서 다음 데이터로 넘어감
                }
            }

            if (!hospitalList.isEmpty()) {
                dao.insertHospitals(hospitalList);
            }

            System.out.println("CSV 데이터 DB 저장 완료!");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
