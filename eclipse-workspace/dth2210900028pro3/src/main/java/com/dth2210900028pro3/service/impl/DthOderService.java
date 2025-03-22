package com.dth2210900028pro3.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.dth2210900028pro3.dao.IDthOrderDAO;
import com.dth2210900028pro3.model.DthOrderModel;
import com.dth2210900028pro3.service.IDthOrderService;

public class DthOderService implements IDthOrderService{

	@Inject
	private IDthOrderDAO orderDAO;
	@Override
	public DthOrderModel save(DthOrderModel orderModel) {
		Long orderId = orderDAO.save(orderModel);

		return orderDAO.findOne(orderId);
	}
	@Override
	public DthOrderModel findOne(long orderId) {
		
		return orderDAO.findOne(orderId);
	}
	@Override
	public List<DthOrderModel> findByIdUser(long idUser) {
		
		return orderDAO.findByIdUser(idUser);
	}
	@Override
	public List<DthOrderModel> findAll() {
		
		return orderDAO.findAll();
	}

}
