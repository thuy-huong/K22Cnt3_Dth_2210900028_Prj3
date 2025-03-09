package com.dth2210900028pro3.service.impl;

import javax.inject.Inject;

import com.dth2210900028pro3.dao.IDthUserDAO;
import com.dth2210900028pro3.model.DthUserModel;
import com.dth2210900028pro3.service.IDthUserService;

public class DthUserService implements IDthUserService{

	@Inject
	private IDthUserDAO userDao;
	
	@Override
	public DthUserModel findByUserAndPassAndStatus(String userName, String password, int status) {
		
		return userDao.findByUserAndPassAndStatus(userName, password, status);
	}

}
