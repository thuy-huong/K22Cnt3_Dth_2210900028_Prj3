package com.dth2210900028pro3.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dth2210900028pro3.model.DthRoleModel;

public class RoleMapper implements RowMapper<DthRoleModel> {

	@Override
	public DthRoleModel mapRow(ResultSet resultSet) {
		try {
			DthRoleModel role = new DthRoleModel();
			role.setIdRole(resultSet.getLong("idrole"));
			role.setName(resultSet.getString("name"));
			role.setIsDelete(resultSet.getBoolean("isDelete"));
			role.setCreatedDate(resultSet.getTimestamp("createddate"));
			role.setModifieddate(resultSet.getTimestamp("modifieddate")); 
			role.setCreatedBy(resultSet.getString("createdby"));
			role.setModifiedBy(resultSet.getString("modifiedby"));
			return role;
		} catch (SQLException e) {
			return null;
		}
	}

}
