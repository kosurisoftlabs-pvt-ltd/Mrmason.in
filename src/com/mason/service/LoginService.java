package com.mason.service;

import java.util.HashMap;
import java.util.Map;

import com.mason.bean.LoginDetails;
import com.mason.dao.LoginDAO;
import com.mason.factory.LoginFactory;

public class LoginService {
	
	public LoginDAO getLoginObject()
	{
		return new LoginFactory().getLoginObject();
	}
	
	public Map<String,String> userlogin(LoginDetails login) 
	{
		Map<String,String> map=new HashMap<String,String>();
		map = getLoginObject().userLogin(login);
		return map;
	} 
	
	public String resetPassword(LoginDetails login) 
	{
		String message = null;
		message = getLoginObject().resetPassword(login);
		return message;
	}
}
