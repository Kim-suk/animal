package com.test.animal.board.dto;

import java.util.Date;

public class ImageDTO {
	private int imageFileNo;
	private String imageFileName;
	private Date regDate;
	private int bno;
	
	
	public int getImageFileNo() {
		return imageFileNo;
	}
	public void setImageFileNo(int imageFileNo) {
		this.imageFileNo = imageFileNo;
	}
	public String getImageFileName() {
		return imageFileName;
	}
	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	
	 @Override
	    public String toString() {
	        return "ImageDTO{" +
	                "imageFileNo=" + imageFileNo +
	                ", imageFileName='" + imageFileName + '\'' +
	                ", regDate=" + regDate +
	                ", bno=" + bno +
	                '}';
	    }
}