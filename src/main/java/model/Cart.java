package model;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class Cart {
	private int idCart;
	private int userID;
	private Map<Product, Integer> items;
	private double totalPrice;
	private double saving;
	public double getSaving() {
		double temp = 0.0;
		Set<Product> products = items.keySet();
		for(Product product : products) {
			temp +=  (product.getSaleValue()*product.getPrice()/100)*items.get(product);
		}
		
		return temp;
	}
	public void setSaving(double saving) {
		this.saving = saving;
	}
	public void setItems(Map<Product, Integer> items) {
		this.items = items;
	}
	public Cart(int idCart, int userID, Map<Product, Integer> items) {
		super();
		this.idCart = idCart;
		this.userID = userID;
		this.items = items;
		this.totalPrice = getTotalPrice();
	}
	public double getTotalPrice() {
		Double temp = 0.0;
		Set<Product> products = items.keySet();
		for(Product product : products) {
			temp += (product.getPrice() - product.getSaleValue() * product.getPrice()/100) * items.get(product);
		}
		
		return temp;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public Cart() {
		super();
		items = new HashMap<>();
	}
	public Cart(int idCart, int userID, Map<Product, Integer> items, double totalPrice, double saving) {
		super();
		this.idCart = idCart;
		this.userID = userID;
		this.items = items;
		this.totalPrice = totalPrice;
		this.saving = saving;
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
	public Map<Product, Integer> getItems() {
		return items;
	}
	
	
	
	
	
}
