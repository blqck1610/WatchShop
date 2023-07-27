package model;

import java.sql.Date;

public class Feedback {
	private int idFeedback;
	private int productID;
	private int rate;
	private int userID;
	private String comment;
	private Date time;
	public Feedback(int idFeedback, int productID, int rate, int userID, String comment, Date time) {
		super();
		this.idFeedback = idFeedback;
		this.productID = productID;
		this.rate = rate;
		this.userID = userID;
		this.comment = comment;
		this.time = time;
	}
	public Feedback() {
		super();
	}
	public int getIdFeedback() {
		return idFeedback;
	}
	public void setIdFeedback(int idFeedback) {
		this.idFeedback = idFeedback;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
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
	
}
