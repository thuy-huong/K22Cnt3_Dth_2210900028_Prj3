package com.dth2210900028pro3.dao;

import java.util.List;

import com.dth2210900028pro3.model.DthOrderModel;
import com.dth2210900028pro3.model.DthProductModel;

public interface IDthOrderDAO extends GenericDAO<DthOrderModel>{
	Long save(DthOrderModel orderModel);
	DthOrderModel findOne(long id);
	List<DthOrderModel> findByIdUser(long idUser);
	List<DthOrderModel> findAll();
}
