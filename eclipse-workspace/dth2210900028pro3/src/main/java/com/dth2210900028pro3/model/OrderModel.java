package com.dth2210900028pro3.model;

public class OrderModel extends AbstractModel {
	private long idOrder;
	private long idUser;
	private String shippingAddress;
	private int paymentMethod;
	private double shipping;
	private double tax;
	private double totalPrice;
	private String note;
	private int status;
	
	public long getIdOrder() {
		return idOrder;
	}
	public void setIdOrder(long idOrder) {
		this.idOrder = idOrder;
	}
	public long getIdUser() {
		return idUser;
	}
	public void setIdUser(long idUser) {
		this.idUser = idUser;
	}
	public String getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	public int getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(int paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public double getShipping() {
		return shipping;
	}
	public void setShipping(double shipping) {
		this.shipping = shipping;
	}
	public double getTax() {
		return tax;
	}
	public void setTax(double tax) {
		this.tax = tax;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}
