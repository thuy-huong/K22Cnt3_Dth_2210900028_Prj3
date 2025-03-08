package com.dth2210900028pro3.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dth2210900028pro3.model.DthUserModel;

public class UserMapper implements RowMapper<DthUserModel> {

	@Override
	public DthUserModel mapRow(ResultSet resultSet) {
		try {
			DthUserModel user = new DthUserModel();
			user.setIdUser(resultSet.getLong("iduser"));
			user.setUserName(resultSet.getString("username"));
			user.setPassword(resultSet.getString("password"));
			user.setFullName(resultSet.getString("fullname"));
			user.setAddress(resultSet.getString("address"));
			user.setAvatar(resultSet.getString("avatar"));
			user.setPhone(resultSet.getString("phone"));
			user.setStatus(resultSet.getInt("status"));
			user.setRoleid(resultSet.getLong("roleid"));
			user.setIsDelete(resultSet.getBoolean("isdelete"));
			user.setCreatedDate(resultSet.getTimestamp("createddate"));
			user.setModifieddate(resultSet.getTimestamp("modifieddate"));
			user.setCreatedBy(resultSet.getString("createdby"));
			user.setModifiedBy(resultSet.getString("modifiedby"));
			return user;
		} catch (SQLException e) {

			return null;
		}
	}

}
