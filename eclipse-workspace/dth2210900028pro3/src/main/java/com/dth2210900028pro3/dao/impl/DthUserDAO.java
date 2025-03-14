package com.dth2210900028pro3.dao.impl;

import java.util.List;

import com.dth2210900028pro3.dao.IDthUserDAO;
import com.dth2210900028pro3.mapper.ProductMapper;
import com.dth2210900028pro3.mapper.UserMapper;
import com.dth2210900028pro3.model.DthProductModel;
import com.dth2210900028pro3.model.DthUserModel;

public class DthUserDAO extends AbstractDAO<DthUserModel> implements IDthUserDAO{

	@Override
	public DthUserModel findByUserAndPassAndStatus(String userName, String password, int status) {
		StringBuilder sql = new StringBuilder("select * from dthuser as u inner join dthrole as r on r.idrole = u.roleid ");
		sql.append("where username=? and password = ? and status=?");
		List<DthUserModel> users = query(sql.toString(), new UserMapper(), userName,password , status);
		
		return users.isEmpty() ? null : users.get(0);
	}

	@Override
	public Long save(DthUserModel userModel) {
		 String sql = "INSERT INTO dthuser (username, password, fullname, address, phone, status, roleid, createddate, modifieddate, createdby, modifiedby) "
	               + "VALUES (?, ?, ?, ?, ?, ?, ?, NOW(), NOW(), ?, ?)";
	    return insert(sql, userModel.getUserName(), userModel.getPassword(), userModel.getFullName(),
	                  userModel.getAddress(), userModel.getPhone(), userModel.getStatus(),
	                  userModel.getRoleid(), userModel.getCreatedBy(), userModel.getModifiedBy());
	}

	@Override
	public DthUserModel findOne(Long id) {
		String sql = "select * from dthuser where iduser=?";
		List<DthUserModel> user = query(sql, new UserMapper(), id);
		return user.isEmpty() ? null : user.get(0);
	}

	@Override
	public DthUserModel findByUserName(String userName) {
		 String sql = "SELECT * FROM dthuser WHERE username = ?";
		 List<DthUserModel> users = query(sql, new UserMapper(), userName);
		return users.isEmpty() ? null : users.get(0);
	}

	

}
