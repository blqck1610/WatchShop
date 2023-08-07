package model;

public class OrderDetail {

	private Product product;
	private int quantity;
	private double price;
	private String status;

	private int reviewPer;

	

	public int getReviewPer() {
		return reviewPer;
	}

	public void setReviewPer(int reviewPer) {
		this.reviewPer = reviewPer;
	}

	public OrderDetail(Product product, int quantity, double price, String status, int reviewPer) {
		super();
		this.product = product;
		this.quantity = quantity;
		this.price = price;
		this.status = status;
		this.reviewPer = reviewPer;
	}

	public OrderDetail() {
		super();
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
