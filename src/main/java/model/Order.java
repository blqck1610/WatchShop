package model;

import java.sql.Date;

public class Order {
	private int id;
	private Date date;
	private int userID;
	private double totalMoney;
	public Order() {
		super();
	}
	public Order(int id, Date date, int userID, double totalMoney) {
		super();
		this.id = id;
		this.date = date;
		this.userID = userID;
		this.totalMoney = totalMoney;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public double getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(double totalMoney) {
		this.totalMoney = totalMoney;
	}
	
	
}
