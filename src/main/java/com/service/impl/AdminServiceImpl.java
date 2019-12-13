package com.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.AdminMapper;
import com.service.IAdminService;

@Service
@Transactional
public class AdminServiceImpl implements IAdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	//检查用户名密码
	@Override
	public boolean checkAdd(Integer addLoginCode,String addLoginPassword,Integer userTypeID,Integer userState) {
		if(addLoginCode!=null&&!addLoginPassword.equals(null)&&userTypeID!=null&&userState!=null) {
			if(addLoginPassword.length()>=6) {
			    return true;
			}else {
				return false;
			}
		}else {
		    return false;
		  }
	}
	
	//注册/添加用户
	@Override
	public void addUser(Integer addLoginCode, String addLoginPassword, Integer userTypeId, Integer userState) {
		adminMapper.adminAddUser(addLoginCode, addLoginPassword, userTypeId, userState);
	}

	//判断用户是否已存在
	@Override
	public boolean checkCodeExit(int addLoginCode) {
		List<Map<String, Object>> exit=adminMapper.adminUserExit(addLoginCode);
		if(exit.size()==0) {
			return true;
		}else {
			return false;
		}
	}
	
	//查询用户信息
	@Override
	public  List<Map<String, Object>> getUserInfo(String searchByLoginCode, String searchByUserState,String searchByUserTypeId) {
		String searchByUS="";
		String searchByUTI="";
		System.out.println(searchByUserState);
		System.out.println(searchByUserTypeId);
		List<Map<String, Object>>  userinfo = null;
		if (!searchByUserState.equals("")) {
			switch (searchByUserState) {
			case "正常":
				searchByUS = "0";
				break;
			case "锁定":
				searchByUS = "1";
				break;
			default:
				searchByUS = "无";
				break;
			}
		}
		if (!searchByUserTypeId.equals("")) {
			switch (searchByUserTypeId) {
			case "管理员":
				searchByUTI = "0";
				break;
			case "医生":
				searchByUTI = "1";
				break;
			case "开单人员":
				searchByUTI = "2";
				break;
			case "收费站人员":
				searchByUTI = "3";
				break;
			default:
				searchByUTI = "无";
				break;
			}
		}
		if (!searchByUTI.equals("无") && !searchByUS.equals("无")) {
			if (searchByLoginCode.equals("")) {
				if (searchByUS.equals("")) {
					if (!searchByUTI.equals("")) {
						userinfo = adminMapper.selectUserInfoByUTI(searchByUTI);
					}
				} else {
					if (searchByUTI.equals("")) {
						userinfo = adminMapper.selectUserInfoByUS(searchByUS);
					} else {
						userinfo = adminMapper.selectUserInfoByUSAndUTI(searchByUS, searchByUTI);
					}
				}
			} else {
				if (searchByUS.equals("")) {
					if (searchByUTI.equals("")) {
						userinfo = adminMapper.selectUserInfoByLoginCode(searchByLoginCode);
					} else {
						userinfo = adminMapper.selectUserInfoByLoginCodeAndUTI(searchByLoginCode, searchByUTI);
					}
				} else {
					if (searchByUTI.equals("")) {
						userinfo = adminMapper.selectUserInfoByLoginCodeAndUS(searchByLoginCode, searchByUS);
					} else {
						userinfo = adminMapper.selectUserInfoByLoginCodeAndUSAndUTI(searchByLoginCode, searchByUS,
								searchByUTI);
					}
				}
			}
		}
		return  userinfo;
	}

	//修改用户
	@Override
	public void updateUserInfo(String upLoginCode, String upLoginPassword, String upUserState, String upUserTypeId) {
		adminMapper.updateUserInfo(upLoginCode,upLoginPassword,upUserState,upUserTypeId);
	}
	
	
}
