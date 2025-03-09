package com.dth2210900028pro3.service;

import com.dth2210900028pro3.model.DthUserModel;

public interface IDthUserService {
	DthUserModel findByUserAndPassAndStatus(String userName, String password, int status);
}
