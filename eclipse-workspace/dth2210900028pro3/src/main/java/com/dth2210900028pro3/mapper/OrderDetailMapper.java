package com.dth2210900028pro3.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dth2210900028pro3.model.DthOrderDetailModel;

public class OrderDetailMapper implements RowMapper<DthOrderDetailModel> {

	@Override
	public DthOrderDetailModel mapRow(ResultSet resultSet) {
		try {
			DthOrderDetailModel orderDetail = new DthOrderDetailModel();
			orderDetail.setId(resultSet.getLong("id"));
			orderDetail.setIdOrder(resultSet.getLong("idOrder"));
			orderDetail.setIdProduct(resultSet.getLong("idProduct"));
			orderDetail.setQuantitySold(resultSet.getInt("quantitySold"));
			return orderDetail;
		} catch (SQLException e) {

			return null;
		}
	}

}
