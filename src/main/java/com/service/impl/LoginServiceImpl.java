package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserMapper;
import com.model.Student;
import com.service.ILoginService;

@Service
public class LoginServiceImpl implements ILoginService {
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public void view() {
		System.out.println("this is view...............");
		Student student=userMapper.findStudent("zx", "123");
		System.out.println(student);

	}

}
