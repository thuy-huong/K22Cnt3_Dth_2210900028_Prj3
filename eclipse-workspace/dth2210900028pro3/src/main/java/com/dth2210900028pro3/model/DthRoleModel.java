package com.dth2210900028pro3.model;

public class DthRoleModel extends AbstractModel<DthRoleModel> {
	private long idRole;
	private String name;
	private Boolean isDelete;

	public long getIdRole() {
		return idRole;
	}

	public void setIdRole(long idRole) {
		this.idRole = idRole;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Boolean getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Boolean isDelete) {
		this.isDelete = isDelete;
	}

}
