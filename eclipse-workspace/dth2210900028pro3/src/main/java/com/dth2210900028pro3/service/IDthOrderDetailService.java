package com.dth2210900028pro3.service;

import java.util.List;

import com.dth2210900028pro3.model.DthOrderDetailModel;

public interface IDthOrderDetailService {
	Long save(DthOrderDetailModel orderDeltailModel);
	List<DthOrderDetailModel> findByOrderId(long idOrder);
}
