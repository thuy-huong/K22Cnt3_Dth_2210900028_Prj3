package com.dth2210900028pro3.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dth2210900028pro3.model.DthCategoryModel;
import com.dth2210900028pro3.model.DthOrderDetailModel;
import com.dth2210900028pro3.model.DthOrderModel;

public class OrderMapper implements RowMapper<DthOrderModel>{

	@Override
	public DthOrderModel mapRow(ResultSet resultSet) {
		 try {
			 DthOrderModel order = new DthOrderModel();
	            order.setIdOrder(resultSet.getLong("idorder"));
	            order.setIdUser(resultSet.getLong("iduser"));
	            order.setShippingAddress(resultSet.getString("shippingaddress"));
	            order.setPaymentMethod(resultSet.getInt("paymenmethod"));
	            order.setShipping(resultSet.getDouble("shipping"));
	            order.setTax(resultSet.getDouble("tax"));
	            order.setTotalPrice(resultSet.getDouble("totalprice"));
	            order.setNote(resultSet.getString("note"));
	            order.setStatus(resultSet.getInt("status"));
	            order.setCreatedDate(resultSet.getTimestamp("createddate")); 
	            order.setModifieddate(resultSet.getTimestamp("modifieddate")); 
	            order.setCreatedBy(resultSet.getString("createdby")); 
	            order.setModifiedBy(resultSet.getString("modifiedby")); 
	          
	            return order;
	        } catch (SQLException e) {
	           
	            return null;
	        }
	}

}
