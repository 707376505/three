package com.service;

import java.util.List;
import java.util.Map;

public interface IAdminService {

	//检查用户名密码
	boolean checkAdd(Integer addLoginCode,String addLoginPassword,Integer userTypeID,Integer userState);

	//注册/添加用户
	void addUser(Integer addLoginCode, String addLoginPassword, Integer userTypeId, Integer userState);

	//判断用户是否已存在
	boolean checkCodeExit(int addLoginCode);
	
	//查询用户
	List<Map<String, Object>> getUserInfo(String searchByLoginCode, String searchByUserState, String searchByUserTypeId);

	//修改用户
	void updateUserInfo(String upLoginCode, String upLoginPassword, String upUserState, String upUserTypeId);

}
