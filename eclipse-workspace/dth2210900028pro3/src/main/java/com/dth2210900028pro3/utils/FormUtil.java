package com.dth2210900028pro3.utils;

import java.lang.reflect.InvocationTargetException;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

public class FormUtil {

	public static <T> T toModel(Class<T> clazz, HttpServletRequest request) {
		T object = null;
		try {

			object = clazz.getDeclaredConstructor().newInstance();

			BeanUtils.populate(object, request.getParameterMap());
		} catch (NoSuchMethodException e) {
			System.err.println("Không tìm thấy constructor: " + e.getMessage());
		} catch (InstantiationException | IllegalAccessException | InvocationTargetException e) {
			System.err.println("Lỗi khi tạo hoặc điền mô hình: " + e.getMessage());
		}

		return object;
	}
}
