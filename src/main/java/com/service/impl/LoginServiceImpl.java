package com.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.LoginMapper;
import com.model.Login;
import com.service.ILoginService;

@Service
@Transactional
public class LoginServiceImpl implements ILoginService {
	
	@Autowired
	private LoginMapper loginMapper;
	
	//登录
	@Override
	public boolean login(int loginCode, String loginPassword) {
		List<Map<String, Object>> user= loginMapper.selectLoginByloginCodeAndloginPassword(loginCode, loginPassword);
		if(user!=null ){
			return true;
		}
		return false;
	}

	//查找菜单地址
	@Override
	public  Map<String, Object> getMenuUrl(int loginCode, String loginPassword) {
		Map<String, Object> menuUrl= loginMapper.selectMenuUrlByloginCodeAndloginPassword(loginCode, loginPassword);
		return menuUrl;
	}
	
}
