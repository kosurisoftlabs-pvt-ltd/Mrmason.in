package com.mason.factory;

import com.mason.dao.LoginDAO;
import com.mason.dao.LoginDAOImpl;

public class LoginFactory {
	
	public LoginDAO getLoginObject()
	{
		LoginDAO loginobject=new LoginDAOImpl();
		return loginobject;
	}

}
