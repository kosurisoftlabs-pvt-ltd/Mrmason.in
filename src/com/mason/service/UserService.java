package com.mason.service;

import java.util.ArrayList;

import com.mason.bean.User;
import com.mason.bean.UserBusinessDetails;
import com.mason.bean.UserServices;
import com.mason.dao.UserDAO;
import com.mason.factory.UserFactory;

public class UserService {
	
	public UserDAO getUserObject()
	{
		return new UserFactory().getUserObject();
	}
	public String registerUser(User user)
	{
		return new UserFactory().getUserObject().registerUser(user);
	}
	
	public boolean checkEmailid(String emailid)
	{
		boolean b=false;
		try {
			if(getUserObject().getEmailId(emailid).equals("Email Exists"))
			{
				b=true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	public boolean checkMobile(String Mobile)
	{
		boolean b=false;
		try {
			if(getUserObject().getMobile(Mobile).equals("Mobile No. Exists"))
			{
				b=true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	
	public String verifyEmailId(String emailid)
	{
		String message = "";
		try {
			message = getUserObject().verifyUserEmail(emailid);
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
		return message;
	}
	
	public String verifyMobileNo(String mobileno,String otp)
	{
		String message = "";
		try {
			message = getUserObject().validateOTP(mobileno, otp);
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
		return message;
	}
	
	public boolean verifyResetPwdMobileNo(String mobileno,String otp)
	{
		boolean b=false;
		try {
				b = getUserObject().validateOTP1(mobileno, otp);
			} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
		return b;
	}
	
	public User viewUserProfile(User user)
	{
		return new UserFactory().getUserObject().viewUserProfile(user);
	}
	
	public String changePassword(String userid,String oldPassword,String newPassword)
	{
		return new UserFactory().getUserObject().changeUserPassword(userid, oldPassword, newPassword);
	}
	
	public String addUserBusinessDetails(UserBusinessDetails ubd)
	{
		return new UserFactory().getUserObject().addUserBusinessDetails(ubd);
	}
	
	public String addUserServiceDetails(UserServices us)
	{
		return new UserFactory().getUserObject().addUserServices(us);
	}
	
	public ArrayList<User> getAllUsers()
	{
		return new UserFactory().getUserObject().getAllUsers();
	}
	

}
