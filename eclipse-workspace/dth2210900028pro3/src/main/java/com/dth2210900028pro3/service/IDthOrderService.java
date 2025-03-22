package com.dth2210900028pro3.service;

import java.util.List;

import com.dth2210900028pro3.model.DthOrderModel;

public interface IDthOrderService {
	DthOrderModel save(DthOrderModel orderModel);
	DthOrderModel findOne(long orderId);
	List<DthOrderModel> findByIdUser(long idUser);
	List<DthOrderModel> findAll();
}
