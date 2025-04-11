package com.test.animal.animal_hospital.dto;

public class AnimalHospitalDTO {
	private int id;
	private String name;
	private String address;
	private String phone;
	private Double latitude;
	private Double longitude;
	
	public AnimalHospitalDTO() {
		// TODO Auto-generated constructor stub
	}
	
	 public AnimalHospitalDTO(int id, String name, String address, String phone, double latitude, double longitude) {
	        this.id = id;
	        this.name = name;
	        this.address = address;
	        this.phone = phone;
	        this.latitude = latitude;
	        this.longitude = longitude;
	    }

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}
	
	public Double getLatitude() {
		return latitude;
	}
	
	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}

	public Double getLongitude() {
		return longitude;
	}

	
	 
	 
}
