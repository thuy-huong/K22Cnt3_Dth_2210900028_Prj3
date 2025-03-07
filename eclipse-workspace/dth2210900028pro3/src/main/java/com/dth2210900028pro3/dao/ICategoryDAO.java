package com.dth2210900028pro3.dao;

import java.util.List;

import com.dth2210900028pro3.model.CategoryModel;

public interface ICategoryDAO extends GenericDAO<CategoryModel>{
	List<CategoryModel> findAll();
}
