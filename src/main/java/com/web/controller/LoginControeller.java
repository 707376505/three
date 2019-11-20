package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.ILoginService;

@Controller
@RequestMapping("login")
public class LoginControeller {

	@Autowired
	private ILoginService LoginServiceImpl;
	
	@RequestMapping("/abc")
	public String Login() {
		
		LoginServiceImpl.view();
		return"index";
	}
	
}
