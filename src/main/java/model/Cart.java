package model;

import java.util.List;

public class Cart {
	private int idCart;
	private int userID;
	private List<Item> items;
	private double totalPrice;
	public Cart(int idCart, int userID, List<Item> items) {
		super();
		this.idCart = idCart;
		this.userID = userID;
		this.items = items;
		this.totalPrice = getTotalPrice(items);
	}
	private double getTotalPrice(List<Item> items) {
		// TODO Auto-generated method stub
		Double temp = 0.0;
		for(Item item : items) {
			temp += item.getTotalPrice();
		}
		return 0;
	}
	public Cart() {
		super();
	}
	public int getIdCart() {
		return idCart;
	}
	public void setIdCart(int idCart) {
		this.idCart = idCart;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public List<Item> getItems() {
		return items;
	}
	public void setItems(List<Item> items) {
		this.items = items;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
}
