package com.service;

import java.util.List;
import java.util.Map;

import com.model.Login;

public interface ILoginService {

	//登录
	public boolean login(int loginCode, String loginPassword);
    
	//查找菜单地址
	public Map<String, Object> getMenuUrl(int loginCode, String loginPassword);
  
}
