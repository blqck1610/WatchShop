package model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Order {
	private int id;
	private Date date;
	private int userID;
	private double totalMoney;
	private List<OrderDetail> orderDetails;
	public Order(int id, Date date, int userID, double totalMoney, List<OrderDetail> orderDetails) {
		super();
		this.id = id;
		this.date = date;
		this.userID = userID;
		this.totalMoney = totalMoney;
		this.orderDetails = orderDetails;
	}
	
	public Order() {
		super();
		orderDetails = new ArrayList<OrderDetail>();
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
	public List<OrderDetail> getOrderDetails() {
		
		
		return orderDetails;
	}
	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}
	
	
}
