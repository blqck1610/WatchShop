package model;

public class Brand {
	private int idBrand;
	private String brandName;
	private String describe;
	private String country;
	public Brand(int idBrand, String brandName, String describe, String country) {
		super();
		this.idBrand = idBrand;
		this.brandName = brandName;
		this.describe = describe;
		this.country = country;
	}
	public int getIdBrand() {
		return idBrand;
	}
	public void setIdBrand(int idBrand) {
		this.idBrand = idBrand;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	} 
	
}
