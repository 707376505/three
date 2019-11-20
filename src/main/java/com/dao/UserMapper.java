package com.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.model.Student;
@Repository
public interface UserMapper {
	public Student findStudent(@Param("stuName")String stuName, @Param("stuPwd")String stuPwd);
	
	
}
