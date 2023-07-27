package model;

public class Product {
	private int idProduct;
	private String productName;
	private double price;
	private int quantity;
	private int categoryID;
	private String img;
	private int brand;
	private String gender;
	private String model;
	private String movement;
	private String label;
	private String engine;
	private String powerReverse;
	private String dialColor;
	private String type;
	private double caseSize;
	private String caseMaterial;
	private String caseShape;
	private String caseBack;
	private String bandMaterial;
	private String bandType;
	private String bandColor;
	private String bandWidth;
	public Product() {
		super();
	}
	public Product(int idProduct, String productName, double price, int quantity, int categoryID, String img, int brand,
			String gender, String model, String movement, String label, String engine, String powerReverse,
			String dialColor, String type, double caseSize, String caseMaterial, String caseShape, String caseBack,
			String bandMaterial, String bandType, String bandColor, String bandWidth) {
		super();
		this.idProduct = idProduct;
		this.productName = productName;
		this.price = price;
		this.quantity = quantity;
		this.categoryID = categoryID;
		this.img = img;
		this.brand = brand;
		this.gender = gender;
		this.model = model;
		this.movement = movement;
		this.label = label;
		this.engine = engine;
		this.powerReverse = powerReverse;
		this.dialColor = dialColor;
		this.type = type;
		this.caseSize = caseSize;
		this.caseMaterial = caseMaterial;
		this.caseShape = caseShape;
		this.caseBack = caseBack;
		this.bandMaterial = bandMaterial;
		this.bandType = bandType;
		this.bandColor = bandColor;
		this.bandWidth = bandWidth;
	}
	public int getIdProduct() {
		return idProduct;
	}
	public void setIdProduct(int idProduct) {
		this.idProduct = idProduct;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getBrand() {
		return brand;
	}
	public void setBrand(int brand) {
		this.brand = brand;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getMovement() {
		return movement;
	}
	public void setMovement(String movement) {
		this.movement = movement;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getEngine() {
		return engine;
	}
	public void setEngine(String engine) {
		this.engine = engine;
	}
	public String getPowerReverse() {
		return powerReverse;
	}
	public void setPowerReverse(String powerReverse) {
		this.powerReverse = powerReverse;
	}
	public String getDialColor() {
		return dialColor;
	}
	public void setDialColor(String dialColor) {
		this.dialColor = dialColor;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public double getCaseSize() {
		return caseSize;
	}
	public void setCaseSize(double caseSize) {
		this.caseSize = caseSize;
	}
	public String getCaseMaterial() {
		return caseMaterial;
	}
	public void setCaseMaterial(String caseMaterial) {
		this.caseMaterial = caseMaterial;
	}
	public String getCaseShape() {
		return caseShape;
	}
	public void setCaseShape(String caseShape) {
		this.caseShape = caseShape;
	}
	public String getCaseBack() {
		return caseBack;
	}
	public void setCaseBack(String caseBack) {
		this.caseBack = caseBack;
	}
	public String getBandMaterial() {
		return bandMaterial;
	}
	public void setBandMaterial(String bandMaterial) {
		this.bandMaterial = bandMaterial;
	}
	public String getBandType() {
		return bandType;
	}
	public void setBandType(String bandType) {
		this.bandType = bandType;
	}
	public String getBandColor() {
		return bandColor;
	}
	public void setBandColor(String bandColor) {
		this.bandColor = bandColor;
	}
	public String getBandWidth() {
		return bandWidth;
	}
	public void setBandWidth(String bandWidth) {
		this.bandWidth = bandWidth;
	}
	
	
}
