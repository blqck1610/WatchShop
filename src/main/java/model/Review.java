package model;

import java.sql.Date;

public class Review {
	private int productId;
	private int userId;
	private int rate;
	private String author;
	private String comment;
	private Date time;
	private String title;
	
	public Review() {
		super();
	}
	public Review(int productId, int userId, int rate, String author, String comment, Date time, String title) {
		super();
		this.productId = productId;
		this.userId = userId;
		this.rate = rate;
		this.author = author;
		this.comment = comment;
		this.time = time;
		this.title = title;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
