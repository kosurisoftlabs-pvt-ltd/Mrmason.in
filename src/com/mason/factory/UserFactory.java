package com.mason.factory;

import com.mason.dao.UserDAO;
import com.mason.dao.UserDAOImpl;

public class UserFactory {

	public UserDAO getUserObject()
	{
		UserDAO userdao = new UserDAOImpl();
		
		return userdao;
	}
}
