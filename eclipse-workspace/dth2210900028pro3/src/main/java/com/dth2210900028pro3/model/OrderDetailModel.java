package com.dth2210900028pro3.model;

public class OrderDetailModel {
	private long id;
	private long idOrder;
	private long idProduct;
	private int quantitySold;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getIdOrder() {
		return idOrder;
	}

	public void setIdOrder(long idOrder) {
		this.idOrder = idOrder;
	}

	public long getIdProduct() {
		return idProduct;
	}

	public void setIdProduct(long idProduct) {
		this.idProduct = idProduct;
	}

	public int getQuantitySold() {
		return quantitySold;
	}

	public void setQuantitySold(int quantitySold) {
		this.quantitySold = quantitySold;
	}
}
