package com.dth2210900028pro3.dao.impl;

import java.util.List;

import com.dth2210900028pro3.dao.ICategoryDAO;
import com.dth2210900028pro3.mapper.CategoryMapper;
import com.dth2210900028pro3.model.DthCategoryModel;

public class CategoryDAO extends AbstractDAO<DthCategoryModel> implements ICategoryDAO {

	
	@Override
	public List<DthCategoryModel> findAll() {
		String sql = "select * from dthcategory where status = 1";
		return query(sql, new CategoryMapper());
	}

	@Override
	public DthCategoryModel findOne(long id) {
		String sql = "select * from dthcategory where idcategory=?";
		List<DthCategoryModel> categories = query(sql, new CategoryMapper(), id);
		return categories.isEmpty() ? null : categories.get(0);
	}
	
}
