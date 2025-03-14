package com.dth2210900028pro3.model;

import java.util.ArrayList;
import java.util.List;

public class DthCartModel {
    private List<DthItemModel> items;
    private int totalQuantity;
    public int getTotalQuantity() {
		return totalQuantity;
	}

	public void setTotalQuantity(int totalQuantity) {
		this.totalQuantity = totalQuantity;
	}

	public void setItems(List<DthItemModel> items) {
		this.items = items;
	}

	public DthCartModel() {
        this.items = new ArrayList<>();
    }

    // Phương thức để thêm sản phẩm vào giỏ hàng
    public void addItem(DthItemModel item) {
        for (DthItemModel existingItem : items) {
            if (existingItem.getProduct().getIdProduct().equals(item.getProduct().getIdProduct())) {
                existingItem.setQuantity(existingItem.getQuantity() + item.getQuantity());
                return;
            }
        }
        items.add(item);
    }

    // Phương thức để cập nhật số lượng sản phẩm trong giỏ hàng
    public void updateItemQuantity(Long idProduct, int quantity) {
        for (DthItemModel item : items) {
            if (item.getProduct().getIdProduct().equals(idProduct)) {
                item.setQuantity(quantity);
                return; 
            }
        }
    }

   
    public void removeItem(Long idProduct) {
        items.removeIf(item -> item.getProduct().getIdProduct().equals(idProduct));
    }

    
    public List<DthItemModel> getItems() {
        return items;
    }

    public int TinhTotalQuantity() {
        int total = 0;
        for (DthItemModel item : items) {
            total += item.getQuantity();
        }
        return total;
    }
}