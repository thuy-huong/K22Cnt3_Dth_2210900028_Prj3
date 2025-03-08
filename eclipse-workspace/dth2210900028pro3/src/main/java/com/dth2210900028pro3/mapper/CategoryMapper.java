package com.dth2210900028pro3.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dth2210900028pro3.model.DthCategoryModel;

public class CategoryMapper implements RowMapper<DthCategoryModel>{

	@Override
	public DthCategoryModel mapRow(ResultSet resultSet) {
		
		try {
			DthCategoryModel cate = new DthCategoryModel();
			cate.setIdCategory(resultSet.getLong("idcategory"));
			cate.setNameCategory(resultSet.getString("namecategory"));
			cate.setImage(resultSet.getString("image"));
			cate.setStatus(resultSet.getBoolean("status"));
			cate.setIsDelete(resultSet.getBoolean("isDelete"));
			cate.setCreatedDate(resultSet.getTimestamp("createddate"));
			cate.setModifieddate(resultSet.getTimestamp("modifieddate"));
			cate.setCreatedBy(resultSet.getString("createdby"));
			cate.setModifiedBy(resultSet.getString("modifiedby"));
			return cate;
		} catch (SQLException e) {
			return null;
		}
		
	}

}
