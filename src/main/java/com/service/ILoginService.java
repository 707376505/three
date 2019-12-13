package com.service;

import java.util.Map;

import org.apache.tomcat.jni.User;

public interface ILoginService {

	//登录
	public boolean login(int loginCode, String loginPassword);
    
	//查找菜单地址
	public Map<String, Object> getMenuUrl(int loginCode, String loginPassword);
	
	//查找用户状态
	public Map<String, Object> getLoginState(int loginCode, String loginPassword);

	//查用户用于存放session
	public User getSession(int loginCode);
  
}
