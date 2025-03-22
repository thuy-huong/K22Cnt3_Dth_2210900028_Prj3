package com.dth2210900028pro3.service;

import java.util.List;

import com.dth2210900028pro3.model.DthUserModel;

public interface IDthUserService {
	DthUserModel findByUserAndPassAndStatus(String userName, String password, int status);
	DthUserModel addUser(DthUserModel user);
	DthUserModel findByUserName(String userName);
	DthUserModel findByid(Long id);
}
