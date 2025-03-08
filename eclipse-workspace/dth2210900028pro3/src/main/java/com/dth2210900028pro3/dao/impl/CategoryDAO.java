package com.dth2210900028pro3.dao.impl;

import java.util.List;

import com.dth2210900028pro3.dao.ICategoryDAO;
import com.dth2210900028pro3.mapper.CategoryMapper;
import com.dth2210900028pro3.model.DthCategoryModel;

public class CategoryDAO extends AbstractDAO<DthCategoryModel> implements ICategoryDAO {

	
	@Override
	public List<DthCategoryModel> findAll() {
		String sql = "select * from dthcategory";
		return query(sql, new CategoryMapper());
	}

}
