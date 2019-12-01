package com.web.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.Login;
import com.service.ILoginService;

@Controller
@RequestMapping("/login")
public class LoginControeller {

	@Autowired
	private ILoginService LoginServiceImpl;

	//登录验证，查找菜单地址
	@RequestMapping("/login")
	@ResponseBody
	public Map<String, Object> CheckLogin(@Param("loginCode") int loginCode, @Param("loginPassword") String loginPassword, HttpServletRequest request) {
		System.out.println(loginCode);
		Map<String, Object>  resultMap=new HashMap<String, Object>();
		boolean flag = LoginServiceImpl.login(loginCode, loginPassword);
		Map<String, Object> menuUrlMap=LoginServiceImpl.getMenuUrl(loginCode, loginPassword);
		resultMap.put("menuUrlMap", menuUrlMap);
		String url =(String)menuUrlMap.get("MENU_URL");
		System.out.println(url);
		if (flag==false) {
			resultMap.put("success", "0");
		}else {
			resultMap.put("success", "1");
			if(url.equals("admin.jsp") ){
				//管理员菜单
				System.out.println(menuUrlMap.values());
				resultMap.put("url","0");
			}else if(url.equals("doctor.jsp") ){
				//医生菜单
				System.out.println(menuUrlMap.values());
				resultMap.put("url","1");
			}else if(url.equals("billman.jsp") ){
				//开单人员菜单
				System.out.println(menuUrlMap.values());
				resultMap.put("url","2");
			}else if(url.equals("chargeman.jsp") ){
				//收费站人员菜单
				System.out.println(menuUrlMap.values());
				resultMap.put("url","3");
			}
		}
		return resultMap;
		
	}
	
}
