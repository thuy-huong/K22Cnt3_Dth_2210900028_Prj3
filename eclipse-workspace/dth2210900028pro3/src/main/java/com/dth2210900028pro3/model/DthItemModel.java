package com.dth2210900028pro3.model;

public class DthItemModel extends AbstractModel<DthItemModel>{
	private DthProductModel product = new DthProductModel();
	private int quantity;
	private Double price;
	public DthProductModel getProduct() {
		return product;
	}
	public void setProduct(DthProductModel product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	
}
