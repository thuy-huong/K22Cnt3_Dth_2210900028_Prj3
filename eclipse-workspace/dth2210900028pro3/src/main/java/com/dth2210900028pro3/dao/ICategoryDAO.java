package com.dth2210900028pro3.dao;

import java.util.List;

import com.dth2210900028pro3.model.DthCategoryModel;

public interface ICategoryDAO extends GenericDAO<DthCategoryModel>{
	List<DthCategoryModel> findAll();
}
