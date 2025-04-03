package com.test.animal.animal_hospital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.csv.CSVRecord;

import java.io.FileReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import com.test.animal.animal_hospital.dao.AnimalHospitalDAO;
import com.test.animal.animal_hospital.dto.AnimalHospitalDTO;

@Service
public class CsvParserServiceImpl implements CsvParserService {
    
	@Autowired
    private AnimalHospitalDAO dao;

    private static final int BATCH_SIZE = 10;  // 10개씩 배치 처리

    @Override
    @Transactional
  // 트랜잭션 적용 (오류 발생 시 롤백)
    public void importCsvToDatabase(String filePath) {
        try (Reader reader = new FileReader(filePath);
             CSVParser csvParser = new CSVParser(reader, CSVFormat.EXCEL.withFirstRecordAsHeader())) {

            List<AnimalHospitalDTO> hospitalList = new ArrayList<>();

            for (CSVRecord record : csvParser) {
                AnimalHospitalDTO hospital = new AnimalHospitalDTO();
                String id = record.get("지점코드");
                hospital.setId(Integer.parseInt(id));
                hospital.setName(record.get("사업장명"));
                hospital.setAddress(record.get("도로명전체주소"));
                hospital.setPhone(record.get("소재지전화"));

                String latStr = record.get("좌표정보y(epsg5174)").trim();
                String lonStr = record.get("좌표정보x(epsg5174)").trim();
                hospital.setLatitude(latStr.isEmpty() ? 0.0 : Double.parseDouble(latStr));
                hospital.setLongitude(lonStr.isEmpty() ? 0.0 : Double.parseDouble(lonStr));

                hospitalList.add(hospital);

                if (hospitalList.size() >= BATCH_SIZE) {
                    dao.batchInsertHospitals(hospitalList);  // 10개씩 DB 저장
                    hospitalList.clear();
                }
            }

            if (!hospitalList.isEmpty()) {
                dao.batchInsertHospitals(hospitalList);  // 마지막 남은 데이터 저장
            }

            System.out.println("CSV 데이터 DB 저장 완료!");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
