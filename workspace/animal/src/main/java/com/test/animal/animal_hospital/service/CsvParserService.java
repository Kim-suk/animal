package com.test.animal.animal_hospital.service;

import java.io.IOException;

public interface CsvParserService {
	 public void importCsvToDatabase(String filePath) throws IOException;
}