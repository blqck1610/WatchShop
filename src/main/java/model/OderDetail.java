package model;

public class OderDetail {
	private int orderID;
	private int productID;
	private int quantity;
	private double price;
	public OderDetail(int orderID, int productID, int quantity, double price) {
		super();
		this.orderID = orderID;
		this.productID = productID;
		this.quantity = quantity;
		this.price = price;
	}
	public OderDetail() {
		super();
	}
	public int getOrderID() {
		return orderID;
	}
	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	
}
