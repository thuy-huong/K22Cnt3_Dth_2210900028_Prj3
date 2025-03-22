package com.dth2210900028pro3.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.dth2210900028pro3.dao.ICategoryDAO;
import com.dth2210900028pro3.dao.IDthProductDAO;
import com.dth2210900028pro3.model.DthCategoryModel;
import com.dth2210900028pro3.model.DthProductModel;
import com.dth2210900028pro3.service.IDthProductService;

public class DthProductService implements IDthProductService {
	@Inject
	private IDthProductDAO productDao;
	

	@Override
	public List<DthProductModel> findByCategoryId(int idCategory) {
		return productDao.findByCategoryId(idCategory);
	}

	@Override
	public DthProductModel save(DthProductModel productModel) {
		Long productId = productDao.save(productModel);

		return productDao.findOne(productId);
	}
	

	@Override
	public DthProductModel update(DthProductModel updateProduct) {
		DthProductModel oldProduct = productDao.findOne(updateProduct.getIdProduct());
		updateProduct.setCreatedBy(oldProduct.getCreatedBy());
		updateProduct.setCreatedDate(oldProduct.getCreatedDate());
		productDao.update(updateProduct);
		return productDao.findOne(updateProduct.getIdProduct());
	}

	@Override
	public void delete(long[] ids) {
		for (long id: ids) {
			productDao.delete(id);
		}
	}

	@Override
	public List<DthProductModel> findAll() {
		
		return productDao.findAll();
	}

	@Override
	public DthProductModel findOne(long id) {
		
		return productDao.findOne(id);
	}

	@Override
	public List<DthProductModel> findByBrandId(int idBrand) {
		return productDao.findByCategoryId(idBrand);
		
	}

	@Override
	public List<DthProductModel> finByNameAndIdCategory(String keywoed, int idCategory) {
		
		return productDao.finByNameAndIdCategory(keywoed, idCategory);
	}

}
