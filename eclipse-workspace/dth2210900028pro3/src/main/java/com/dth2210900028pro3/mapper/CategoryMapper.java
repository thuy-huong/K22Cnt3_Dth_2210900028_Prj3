package com.dth2210900028pro3.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dth2210900028pro3.model.CategoryModel;

public class CategoryMapper implements RowMapper<CategoryModel>{

	@Override
	public CategoryModel mapRow(ResultSet resultSet) {
		
		try {
			CategoryModel cate = new CategoryModel();
			cate.setIdCategory(resultSet.getInt("idcategory"));
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
