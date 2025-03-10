package com.dth2210900028pro3.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.dth2210900028pro3.dao.IDthBrandDAO;
import com.dth2210900028pro3.model.DthBrandModel;
import com.dth2210900028pro3.service.IDthBrandService;

public class DthBrandService implements IDthBrandService {

    @Inject
    private IDthBrandDAO brandDao; 

    @Override
    public List<DthBrandModel> findAll() {
        return brandDao.findAll();
    }

}