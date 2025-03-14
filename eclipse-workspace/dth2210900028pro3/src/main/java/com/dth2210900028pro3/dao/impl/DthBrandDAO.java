package com.dth2210900028pro3.dao.impl;

import java.util.List;

import com.dth2210900028pro3.dao.IDthBrandDAO;
import com.dth2210900028pro3.mapper.BrandMapper;
import com.dth2210900028pro3.model.DthBrandModel;

public class DthBrandDAO extends AbstractDAO<DthBrandModel> implements IDthBrandDAO{

	@Override
	public List<DthBrandModel> findAll() {
		String sql = "select * from dthbrand";
		return query(sql, new BrandMapper());
	}

}
