package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
@Repository
public interface AdminMapper {
	
	//注册/添加用户
	public void adminAddUser(@Param("addLoginCode") Integer addLoginCode, @Param("addLoginPassword") String addLoginPassword, @Param("userTypeId") Integer userTypeId, @Param("userState") Integer userState);

	//判断用户是否已存在
	public List<Map<String, Object>> adminUserExit(@Param("addLoginCode")int addLoginCode);

	//通过UTI查询用户信息
	public List<Map<String, Object>> selectUserInfoByUTI(@Param("searchByUTI")String searchByUTI);

	//通过US查询用户信息
	public List<Map<String, Object>> selectUserInfoByUS(@Param("searchByUS")String searchByUS);

	//通过US和UTI查询用户信息
	public List<Map<String, Object>> selectUserInfoByUSAndUTI(@Param("searchByUS")String searchByUS, @Param("searchByUTI")String searchByUTI);

	//通过loginCode查询用户信息
	public List<Map<String, Object>> selectUserInfoByLoginCode(@Param("searchByLoginCode")String searchByLoginCode);

	//通过loginCode和UTI查询用户信息
	public List<Map<String, Object>> selectUserInfoByLoginCodeAndUTI(@Param("searchByLoginCode")String searchByLoginCode, @Param("searchByUTI")String searchByUTI);

	//通过loginCode和US查询用户信息
	public List<Map<String, Object>> selectUserInfoByLoginCodeAndUS(@Param("searchByLoginCode")String searchByLoginCode, @Param("searchByUS")String searchByUS);

	//通过loginCode和US和UTI查询用户信息
	public List<Map<String, Object>> selectUserInfoByLoginCodeAndUSAndUTI(@Param("searchByLoginCode")String searchByLoginCode, @Param("searchByUS")String searchByUS,
			@Param("searchByUTI")String searchByUTI);

	//修改用户信息
	public void updateUserInfo(@Param("upLoginCode")String upLoginCode,@Param("upLoginPassword") String upLoginPassword, @Param("upUserState")String upUserState, @Param("upUserTypeId")String upUserTypeId);

}