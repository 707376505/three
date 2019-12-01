package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.model.Login;
@Repository
public interface LoginMapper {
	/*public Student findStudent(@Param("stuName")String stuName, @Param("stuPwd")String stuPwd);
*/
	//登录
	public  List<Map<String, Object>>  selectLoginByloginCodeAndloginPassword(@Param("loginCode") int loginCode, @Param("loginPassword")String loginPassword);

	//查找菜单地址
	public Map<String, Object> selectMenuUrlByloginCodeAndloginPassword(@Param("loginCode") int loginCode, @Param("loginPassword")String loginPassword);

}
