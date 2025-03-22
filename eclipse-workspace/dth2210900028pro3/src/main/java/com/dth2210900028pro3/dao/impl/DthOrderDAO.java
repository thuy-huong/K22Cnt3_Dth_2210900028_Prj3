package com.dth2210900028pro3.dao.impl;

import java.util.List;

import com.dth2210900028pro3.dao.IDthOrderDAO;
import com.dth2210900028pro3.mapper.OrderMapper;
import com.dth2210900028pro3.mapper.ProductMapper;
import com.dth2210900028pro3.model.DthOrderModel;
import com.dth2210900028pro3.model.DthProductModel;

public class DthOrderDAO extends AbstractDAO<DthOrderModel> implements IDthOrderDAO {

	@Override
	public Long save(DthOrderModel orderModel) {
		 String sql = "INSERT INTO `dth_2210900028_project3`.`dthorders` "
	               + "(`iduser`, `shippingaddress`, `paymenmethod`, `shipping`, `tax`, `totalprice`, `note`, `status`, "
	               + "createddate, modifieddate, createdby, modifiedby) "
	               + "VALUES (?, ?, ?, ?, ?, ?, ?,?, NOW(), NOW(), ?, ?)";
	  

	    return insert(sql, orderModel.getIdUser(), orderModel.getShippingAddress(),
	                  orderModel.getPaymentMethod(), orderModel.getShipping(),
	                  orderModel.getTax(), orderModel.getTotalPrice(), orderModel.getNote(), orderModel.getStatus(), 
	                  orderModel.getCreatedBy(), orderModel.getModifiedBy());
	}

	@Override
	public DthOrderModel findOne(long id) {
		String sql ="select * from dthorders where idOrder = ?";
		List<DthOrderModel> orders = query(sql, new OrderMapper(), id);
		return orders.isEmpty() ? null : orders.get(0);
	}

	@Override
	public List<DthOrderModel> findByIdUser(long idUser) {
		String sql =  "Select * from dthorders where idUser = ?";
		return query(sql, new OrderMapper(), idUser);
	}

	
	@Override
	public List<DthOrderModel> findAll() {
		
		String sql = "Select * from dthorders";
		return query(sql, new OrderMapper());
	}
	
}
