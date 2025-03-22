package com.dth2210900028pro3.dao;

import java.util.List;

import com.dth2210900028pro3.model.DthUserModel;

public interface IDthUserDAO extends GenericDAO<DthUserModel> {
	DthUserModel findByUserAndPassAndStatus(String userName, String password, int status);
	Long save(DthUserModel user); 
	DthUserModel findOne(Long id);
	DthUserModel findByUserName(String userName);
	
	DthUserModel findById(Long id);
}
