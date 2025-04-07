package com.test.animal.member.dto;

import java.sql.Date;

public class MemberDTO {
	private String id;
	private String pwd;
	private String age;
	private String name;
	private String gender;
	private String email;
	private Date joinDate;
	private String naverId;   // 네이버 ID
	private String kakaoId;   // 네이버 ID
	private String googleId;   // 네이버 ID
	private String joinType;  // NAVER / EMAIL

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}
	/**
	 * @return the naverId
	 */
	public String getNaverId() {
		return naverId;
	}
	/**
	 * @param naverId the naverId to set
	 */
	public void setNaverId(String naverId) {
		this.naverId = naverId;
	}
	/**
	 * @return the joinType
	 */
	public String getJoinType() {
		return joinType;
	}
	/**
	 * @param joinType the joinType to set
	 */
	public void setJoinType(String joinType) {
		this.joinType = joinType;
	}
	/**
	 * @return the kakaoId
	 */
	public String getKakaoId() {
		return kakaoId;
	}
	/**
	 * @param kakaoId the kakaoId to set
	 */
	public void setKakaoId(String kakaoId) {
		this.kakaoId = kakaoId;
	}
	/**
	 * @return the googleId
	 */
	public String getGoogleId() {
		return googleId;
	}
	/**
	 * @param googleId the googleId to set
	 */
	public void setGoogleId(String googleId) {
		this.googleId = googleId;
	}
	/*public void setAge(String ageStr) {
	    try {
	        this.age = Integer.parseInt(ageStr);
	    } catch (NumberFormatException e) {
	        this.age = 0;
	    }
	}




*/
	public void setAge(int i) {
		// TODO Auto-generated method stub
		
	}

}
