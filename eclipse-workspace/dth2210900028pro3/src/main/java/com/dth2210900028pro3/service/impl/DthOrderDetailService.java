package com.dth2210900028pro3.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.dth2210900028pro3.dao.impl.DthOrderDetailDAO;
import com.dth2210900028pro3.model.DthOrderDetailModel;
import com.dth2210900028pro3.service.IDthOrderDetailService;

public class DthOrderDetailService implements IDthOrderDetailService{

	@Inject
	private DthOrderDetailDAO orderDetailDAO;
	@Override
	public Long save(DthOrderDetailModel orderDeltailModel) {
		Long id = orderDetailDAO.save(orderDeltailModel);
		return id;
	}
	@Override
	public List<DthOrderDetailModel> findByOrderId(long idOrder) {
		
		return orderDetailDAO.findByOrderId(idOrder);
	}

}
