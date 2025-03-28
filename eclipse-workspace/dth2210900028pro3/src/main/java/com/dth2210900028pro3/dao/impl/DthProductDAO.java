package com.dth2210900028pro3.dao.impl;

import java.util.List;

import com.dth2210900028pro3.dao.IDthProductDAO;
import com.dth2210900028pro3.mapper.ProductMapper;
import com.dth2210900028pro3.model.DthProductModel;

public class DthProductDAO extends AbstractDAO<DthProductModel> implements IDthProductDAO {

	@Override
	public List<DthProductModel> findByCategoryId(int idCategory) {
		String sql = "select * from dthproduct where idcategory=? and isdelete != true";
		return query(sql, new ProductMapper(), idCategory);
	}

	@Override
	public Long save(DthProductModel productModel) {
		String sql = "INSERT INTO dthproduct (nameproduct, idcategory, idbrand, importprice, sellingprice, quantity, unit, shortdescription, detaileddescription, image, status, isdelete, createddate, modifieddate, createdby, modifiedby) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW(), NOW(), ?, ?)";

		return insert(sql, productModel.getNameProduct(), productModel.getIdCategory(), productModel.getIdBrand(),
				productModel.getImportPrice(), productModel.getSellingPrice(), productModel.getQuantity(),
				productModel.getUnit(), productModel.getShortDescription(), productModel.getDetailedDescription(),
				productModel.getImage(), productModel.getStatus(), true, productModel.getCreatedBy(),
				productModel.getModifiedBy());
	}

	@Override
	public DthProductModel findOne(Long id) {
		String sql = "select * from dthproduct where idproduct=?";
		List<DthProductModel> product = query(sql, new ProductMapper(), id);
		return product.isEmpty() ? null : product.get(0);
	}

	@Override
	public void update(DthProductModel updateProduct) {
		StringBuilder sql = new StringBuilder(
				"UPDATE dthproduct SET nameproduct = ?, idcategory = ?, idbrand = ?, importprice = ?, ");
		sql.append("sellingprice = ?, quantity = ?, unit = ?, ");
		sql.append("shortdescription = ?, detaileddescription = ?, ");
		sql.append("image = ?, status = ?, isdelete = ?, ");
		sql.append("createddate = ?, modifieddate = NOW(), createdby = ?,  modifiedby = ? ");
		sql.append("WHERE idproduct = ?");

		update(sql.toString(), updateProduct.getNameProduct(), updateProduct.getIdCategory(),
				updateProduct.getIdBrand(), updateProduct.getImportPrice(), updateProduct.getSellingPrice(),
				updateProduct.getQuantity(), updateProduct.getUnit(), updateProduct.getShortDescription(),
				updateProduct.getDetailedDescription(), updateProduct.getImage(), updateProduct.getStatus(),
				updateProduct.getIsDelete(), updateProduct.getCreatedDate(), updateProduct.getCreatedBy(),
				updateProduct.getModifiedBy(), updateProduct.getIdProduct());

	}

	@Override
	public void delete(long id) {
		String sql = "UPDATE dthproduct SET isdelete = true where  idproduct = ?";
		update(sql, id);

	}

	@Override
	public List<DthProductModel> findAll() {
		
		String sql = "SELECT * FROM dthproduct AS p INNER JOIN dthcategory AS c ON p.idcategory = c.idcategory INNER JOIN dthbrand AS b ON p.idbrand = b.idbrand ";
		return query(sql, new ProductMapper());
	}

	@Override
	public List<DthProductModel> findByBrandId(int idBrand) {
		String sql = "select * from dthproduct where idbrand=? and isdelete != true and status = 1";
		return query(sql, new ProductMapper(), idBrand);
	}

	@Override
	public List<DthProductModel> finByNameAndIdCategory(String keyword, int idCategory) {
		String sql;
		if(idCategory == 0) {
			sql = "SELECT * FROM dthproduct WHERE nameproduct LIKE ?";
			return query(sql, new ProductMapper(), "%"+keyword+"%");
		}else {
			sql = "select * from dthproduct where nameproduct = ? and idcategory = ?";
			return query(sql, new ProductMapper(), "%"+keyword+"%", idCategory);
		}
		
	}

}
