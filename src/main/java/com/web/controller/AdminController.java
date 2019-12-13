package com.web.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.service.IAdminService;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	private IAdminService AdminServiceImpl;
	
	//跳转去注册/添加用户
	@RequestMapping("/addUser")
	@ResponseBody
	public Map<String, Object> addUser(HttpServletRequest request,HttpServletResponse response) throws IOException {
		Map<String, Object>  resultMap=new HashMap<String, Object>();
		resultMap.put("toaddSuccess","to");
		return resultMap;
	}
	
	//跳转去查询用户
	@RequestMapping("/selectUser")
	@ResponseBody
	public Map<String, Object> selectUser(HttpServletRequest request,HttpServletResponse response) throws IOException {
		Map<String, Object>  resultMap=new HashMap<String, Object>();
		resultMap.put("toselectSuccess","to");
		return resultMap;
	}
	
	//跳转去修改用户
	@RequestMapping("/updateUser")
	@ResponseBody
	public Map<String, Object> updateUser(HttpServletRequest request,HttpServletResponse response) throws IOException {
		Map<String, Object>  resultMap=new HashMap<String, Object>();
		resultMap.put("toupdateSuccess","to");
		return resultMap;
	}
	
	//注册/添加用户
	@RequestMapping("/doAddUser")
	@ResponseBody
	public Map<String, Object> CheckAddUser(@Param("addLoginCode") Integer addLoginCode, @Param("addLoginPassword") String addLoginPassword, @Param("userTypeId") Integer userTypeId, @Param("userState") Integer userState,HttpServletRequest request) {
		System.out.println(addLoginCode);
		System.out.println(addLoginPassword);
		System.out.println(userTypeId);
		System.out.println(userState);
		Map<String, Object>  resultMap=new HashMap<String, Object>();
		boolean flag = AdminServiceImpl.checkAdd(addLoginCode,addLoginPassword,userTypeId,userState);
		boolean exitFlag=AdminServiceImpl.checkCodeExit(addLoginCode);
		if(flag==true&&exitFlag==true) {
			AdminServiceImpl.addUser(addLoginCode,addLoginPassword,userTypeId,userState);
			resultMap.put("addSuccess","1");
		}else {
			resultMap.put("addSuccess","0");
		}
		return resultMap;
	}
	
	//查询用户信息
	@RequestMapping("/doSelectUser")
	@ResponseBody
	public Map<String, Object> SelectUser(@Param("searchByLoginCode") String searchByLoginCode, @Param("searchByUserState") String searchByUserState, @Param("searchByUserTypeId") String searchByUserTypeId,HttpServletRequest request) {
		System.out.println(searchByLoginCode);
		System.out.println(searchByUserState);
		System.out.println(searchByUserTypeId);
		Map<String, Object>  resultMap=new HashMap<String, Object>();
		if(searchByLoginCode.equals("")&&searchByUserState.equals("")&&searchByUserTypeId.equals("")) {
			resultMap.put("selectSuccess", "0");
		}else {
			List<Map<String, Object>> userinfoMap=AdminServiceImpl.getUserInfo(searchByLoginCode, searchByUserState, searchByUserTypeId);
			resultMap.put("userinfoMap", userinfoMap);
			if(userinfoMap.size()==0) {
				resultMap.put("selectSuccess", "0");
			}else {
				resultMap.put("selectSuccess", "1");
			}
		}
		return resultMap;
	}
	
	//修改用户信息
	@RequestMapping("/doUpdateUser")
	@ResponseBody
	public Map<String, Object> UpdateUser(@Param("upLoginCode") String upLoginCode, @Param("upLoginPassword") String upLoginPassword,@Param("upUserState") String upUserState, @Param("upUserTypeId") String upUserTypeId,HttpServletRequest request) {
		System.out.println(upLoginCode);
		System.out.println(upLoginPassword);
		System.out.println(upUserState);
		System.out.println(upUserTypeId);
		Map<String, Object>  resultMap=new HashMap<String, Object>();
		if(upLoginCode.equals("")||upLoginPassword.equals("")||upUserState.equals("")||upUserTypeId.equals("")) {
			resultMap.put("updateSuccess", "0");
		}else {
			AdminServiceImpl.updateUserInfo(upLoginCode,upLoginPassword,upUserState,upUserTypeId);
			resultMap.put("updateSuccess", "1");
		}
		return resultMap;
	}
}
