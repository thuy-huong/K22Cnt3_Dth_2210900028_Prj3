package com.dth2210900028pro3.dao;

import java.util.List;

import com.dth2210900028pro3.model.DthBrandModel;

public interface IDthBrandDAO extends GenericDAO<DthBrandModel>{
	List<DthBrandModel> findAll();
}
