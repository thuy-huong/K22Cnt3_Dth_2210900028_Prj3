package com.dth2210900028pro3.dao;

import java.util.List;

import com.dth2210900028pro3.model.ProductModel;

public interface IProductDAO extends GenericDAO<ProductModel>{
	List<ProductModel> findByCategoryId(int idCategory);

}
