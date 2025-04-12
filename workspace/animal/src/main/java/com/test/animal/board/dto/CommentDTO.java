package com.test.animal.board.dto;

import java.sql.Date;

public class CommentDTO {
	private int comment_num;	// ´ñ±Û °íÀ¯ ¹øÈ£
	private int bno;			// °³»ç±¼ ¹øÈ£(¾î¶² °Ô½Ã±ÛÀÇ ´ñ±ÛÀÎÁö)
	private String id;			// ´ñ±Û ÀÛ¼ºÀÚ ¾ÆÀÌµð
	private String content;		// ´ñ±Û ³»¿ë
	private Date writedate;		// ´ñ±Û ÀÛ¼ºÀÏ(java.sql.Date·Î ¼±¾ð)
	
	public int getComment_num() {
		return comment_num;
	}
	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWritedate() {
		return writedate;
	}
	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}
	
	
}
