package com.dth2210900028pro3.service.impl;

import javax.inject.Inject;

import com.dth2210900028pro3.dao.IDthUserDAO;
import com.dth2210900028pro3.model.DthUserModel;
import com.dth2210900028pro3.service.IDthUserService;
import com.dth2210900028pro3.utils.SessionUtil;

public class DthUserService implements IDthUserService{

	@Inject
	private IDthUserDAO userDao;
	
	@Override
	public DthUserModel findByUserAndPassAndStatus(String userName, String password, int status) {
		
		return userDao.findByUserAndPassAndStatus(userName, password, status);
	}

	@Override
	public DthUserModel addUser(DthUserModel user) {
		user.setRoleid(4);
		user.setIsDelete(false);
		user.setStatus(1);
		user.setCreatedBy("user");
		user.setModifiedBy("user");
		Long userId = userDao.save(user);

		return userDao.findOne(userId);
	}

	@Override
	public DthUserModel findByUserName(String userName) {
		// TODO Auto-generated method stub
		return userDao.findByUserName(userName);
	}

	

}
