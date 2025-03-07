package com.dth2210900028pro3.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dth2210900028pro3.model.ProductModel;

public class ProductMapper implements RowMapper<ProductModel> {

	@Override
	public ProductModel mapRow(ResultSet rs) {
		try {
			ProductModel product = new ProductModel();
			product.setIdProduct(rs.getLong("idproduct"));
			product.setNameProduct(rs.getString("nameproduct"));
			product.setIdCategory(rs.getInt("idcategory"));
			product.setIdBrand(rs.getInt("idbrand"));
			product.setImportPrice(rs.getDouble("importprice"));
			product.setSellingPrice(rs.getDouble("sellingprice"));
			product.setQuantity(rs.getInt("quantity"));
			product.setUnit(rs.getString("unit"));
			product.setShortDescription(rs.getString("shortDescription"));
			product.setDetailedDescription(rs.getString("detailedDescription"));
			product.setImage(rs.getString("image"));
			product.setStatus(rs.getInt("status"));
			product.setIsDelete(rs.getBoolean("isDelete"));
			product.setCreatedDate(rs.getTimestamp("createddate"));
			product.setModifieddate(rs.getTimestamp("modifieddate"));
			product.setCreatedBy(rs.getString("createdby"));
			product.setModifiedBy(rs.getString("modifiedby"));
			return product;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return null;
		} 

		
	}

}
