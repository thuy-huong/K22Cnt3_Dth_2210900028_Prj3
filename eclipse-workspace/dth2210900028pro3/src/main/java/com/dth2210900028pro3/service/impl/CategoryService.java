package com.dth2210900028pro3.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.dth2210900028pro3.dao.ICategoryDAO;
import com.dth2210900028pro3.model.DthCategoryModel;
import com.dth2210900028pro3.service.ICategoryService;

public class CategoryService implements ICategoryService{
	
	@Inject
	private ICategoryDAO cateDao;
	
	@Override
	public List<DthCategoryModel> findAll() {
		// TODO Auto-generated method stub
		return cateDao.findAll();
	}

}
