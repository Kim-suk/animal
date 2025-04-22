package com.test.animal.product.dto;

public class ProductDTO {
	private String id;				// 제품의 아이디
	private String animal_type;     // 동물 타입
	private String name;			// 제품의 이름
	private String category;		// 제품의 카테고리 종류
	private String description;		// 제품 설명
	private int price;				// 제품 가격
	private String image_url;		// 제품 사진 url
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getAnimal_type() {
		return animal_type;
	}
	public void setAnimal_type(String animal_type) {
		this.animal_type = animal_type;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

	public String getImage_url() {
		return image_url;
	}
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
	
}