package com.dth2210900028pro3.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dth2210900028pro3.model.DthBrandModel;

public class BrandMapper implements RowMapper<DthBrandModel> {


	@Override
	public DthBrandModel mapRow(ResultSet resultSet) {
		 try {
			 DthBrandModel brand = new DthBrandModel();
	            brand.setIdBrand(resultSet.getLong("idbrand"));
	            brand.setNameBrand(resultSet.getString("namebrand"));
	            brand.setImage(resultSet.getString("image"));
	            brand.setStatus(resultSet.getBoolean("status"));
	            brand.setIsDelete(resultSet.getBoolean("isDelete"));
	            brand.setCreatedDate(resultSet.getTimestamp("createddate"));
	            brand.setModifieddate(resultSet.getTimestamp("modifieddate"));
	            brand.setCreatedBy(resultSet.getString("createdby"));
	            brand.setModifiedBy(resultSet.getString("modifiedby"));
	            return brand;
	        } catch (SQLException e) {
	           
	            return null;
	        }
	}
}
