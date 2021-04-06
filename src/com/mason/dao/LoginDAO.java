package com.mason.dao;

import java.util.Map;

import com.mason.bean.LoginDetails;

public interface LoginDAO {
	
	public Map<String,String> userLogin(LoginDetails login);
	public String forgotPassword(String emailid);
	public String resetPassword(LoginDetails login);

}
