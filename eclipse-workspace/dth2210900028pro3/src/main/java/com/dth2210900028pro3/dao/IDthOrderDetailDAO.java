package com.dth2210900028pro3.dao;

import java.util.List;

import com.dth2210900028pro3.model.DthOrderDetailModel;

public interface IDthOrderDetailDAO extends GenericDAO<DthOrderDetailModel>{
	Long save(DthOrderDetailModel orderDetailModel);
	List<DthOrderDetailModel> findByOrderId(long idOrder);
}
