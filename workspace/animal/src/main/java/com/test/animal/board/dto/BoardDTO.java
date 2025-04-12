package com.test.animal.board.dto;

import java.sql.Date;

public class BoardDTO {
	private int bno;
	private int category;
	private String id;
	private String title;
	private String content;
	private String hashtag;
	private Date writedate;
	private int readcount;
	private String img;
	private int  comment_count;
	private int like_it;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getHashtag() {
		return hashtag;
	}
	public void setHashtag(String hashtag) {
		this.hashtag = hashtag;
	}
	public Date getWritedate() {
		return writedate;
	}
	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getComment_count() {
		return comment_count;
	}
	public void setComment_count(int comment_count) {
		this.comment_count = comment_count;
	}
	public int getLike_it() {
		return like_it;
	}
	public void setLike_it(int like_it) {
		this.like_it = like_it;
	}

	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	
}