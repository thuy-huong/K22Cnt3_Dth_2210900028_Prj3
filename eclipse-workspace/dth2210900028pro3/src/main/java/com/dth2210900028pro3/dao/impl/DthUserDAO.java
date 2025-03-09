package com.dth2210900028pro3.dao.impl;

import java.util.List;

import com.dth2210900028pro3.dao.IDthUserDAO;
import com.dth2210900028pro3.mapper.UserMapper;
import com.dth2210900028pro3.model.DthUserModel;

public class DthUserDAO extends AbstractDAO<DthUserModel> implements IDthUserDAO{

	@Override
	public DthUserModel findByUserAndPassAndStatus(String userName, String password, int status) {
		StringBuilder sql = new StringBuilder("select * from dthuser as u inner join dthrole as r on r.idrole = u.roleid ");
		sql.append("where username=? and password = ? and status=?");
		List<DthUserModel> users = query(sql.toString(), new UserMapper(), userName,password , status);
		
		return users.isEmpty() ? null : users.get(0);
	}

}
