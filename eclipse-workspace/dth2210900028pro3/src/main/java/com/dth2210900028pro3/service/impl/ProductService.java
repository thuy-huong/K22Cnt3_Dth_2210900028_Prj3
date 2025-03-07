package com.dth2210900028pro3.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.dth2210900028pro3.dao.IProductDAO;
import com.dth2210900028pro3.model.ProductModel;
import com.dth2210900028pro3.service.IProductService;

public class ProductService implements IProductService{

	@Inject
	private IProductDAO productDao;
	@Override
	public List<ProductModel> findByCategoryId(int idCategory) {
		
		return productDao.findByCategoryId(idCategory);
	}

}
