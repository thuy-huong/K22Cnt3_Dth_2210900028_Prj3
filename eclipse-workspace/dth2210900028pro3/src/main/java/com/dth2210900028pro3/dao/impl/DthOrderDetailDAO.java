package com.dth2210900028pro3.dao.impl;

import java.util.List;

import com.dth2210900028pro3.dao.IDthOrderDetailDAO;
import com.dth2210900028pro3.mapper.OrderDetailMapper;
import com.dth2210900028pro3.model.DthOrderDetailModel;

public class DthOrderDetailDAO extends AbstractDAO<DthOrderDetailModel> implements IDthOrderDetailDAO{

	@Override
	public Long save(DthOrderDetailModel orderDetailModel) {
		String sql = "INSERT INTO `dth_2210900028_project3`.`dthorderdetails` (`idOrder`, `idProduct`, `quantitySold`) "
				+ "VALUES (?,?,?)";
		
		return insert(sql, orderDetailModel.getIdOrder(), orderDetailModel.getIdProduct(), orderDetailModel.getQuantitySold());
	}

	@Override
	public List<DthOrderDetailModel> findByOrderId(long idOrder) {
		String sql = "Select * from dthorderdetails where idOrder = ?";
		return query(sql, new OrderDetailMapper(), idOrder);
	}

}
