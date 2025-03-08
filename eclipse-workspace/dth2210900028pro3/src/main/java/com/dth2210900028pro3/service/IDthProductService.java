package com.dth2210900028pro3.service;

import java.util.List;

import com.dth2210900028pro3.model.DthProductModel;

public interface IDthProductService {
	List<DthProductModel> findByCategoryId(int idCategory);

	DthProductModel save(DthProductModel productModel);
	DthProductModel update(DthProductModel updateProduct);
	void delete(long[] ids);
}
