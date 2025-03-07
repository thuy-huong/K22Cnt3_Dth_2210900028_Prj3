package com.dth2210900028pro3.dao.impl;

import java.util.List;

import com.dth2210900028pro3.dao.IProductDAO;
import com.dth2210900028pro3.mapper.ProductMapper;
import com.dth2210900028pro3.model.ProductModel;

public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO {

	
	@Override
	public List<ProductModel> findByCategoryId(int idCategory) {
		String sql = "select * from dthproduct where idcategory=?";
		return query(sql, new ProductMapper(), idCategory);
	}
	
}
