package com.dth2210900028pro3.service;

import java.util.List;

import com.dth2210900028pro3.model.ProductModel;

public interface IProductService {
	List<ProductModel> findByCategoryId(int idCategory);
}
