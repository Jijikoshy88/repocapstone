package common;
public class User_Bean {
	private String idcuisine;
	private String cuisine;
	
	private String fooditems;
	
	private String description;
	private String price;
	private String offers;
	
	public String getFooditems() {
		return fooditems;
	}
	public void setFooditems(String fooditems) {
		this.fooditems = fooditems;
	}
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getOffers() {
		return offers;
	}
	public void setOffers(String offers) {
		this.offers = offers;
	}
	public String getIdcuisine() {
		return idcuisine;
	}
	public void setIdcuisine(String idcuisine) {
		this.idcuisine = idcuisine;
	}
	public String getCuisine() {
		return cuisine;
	}
	public void setCuisine(String cuisine) {
		this.cuisine = cuisine;
	}
	
	
}