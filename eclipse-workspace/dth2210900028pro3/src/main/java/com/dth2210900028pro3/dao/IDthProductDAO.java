package com.dth2210900028pro3.dao;

import java.util.List;

import com.dth2210900028pro3.model.DthProductModel;

public interface IDthProductDAO  extends GenericDAO<DthProductModel>{
	DthProductModel findOne(Long id);
	List<DthProductModel> findByCategoryId(int idCategory);
	Long save(DthProductModel productModel);
	void update(DthProductModel updateProduct);
	void delete(long id);
	
	List<DthProductModel> findAll();
}
