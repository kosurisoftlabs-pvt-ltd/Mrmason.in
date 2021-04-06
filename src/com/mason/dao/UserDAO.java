package com.mason.dao;

import java.util.ArrayList;

import com.mason.bean.User;
import com.mason.bean.UserBusinessDetails;
import com.mason.bean.UserServices;

public interface UserDAO {
	
	public int getNoOfRecords();
	public String registerUser(User user);
	public ArrayList<User> getUsersDetails(User bu,int offset,int limit);
	public User viewUserProfile(User user);
	public String updateUser(User user);
	public String getEmailId(String emailid);
	public String getMobile(String mobile);
	public String verifyUserEmail(String emailid);
	public String validateOTP(String mobileno,String otp);
	public boolean validateOTP1(String mobileno,String otp);
	public String changeUserPassword(String userid,String oldPassword,String newPassword);
	public boolean comparePassword(String userid,String oldPassword,String newPassword);
	public ArrayList<User> getAllUsers();
	public ArrayList<User> getAllUsers(int offset,int limit);
	// User Business Details
	
	public String addUserBusinessDetails(UserBusinessDetails ubd);
	public ArrayList<UserBusinessDetails> getUserBusinessDetails(User bu,int offset,int limit);
	
	// User Services Details
	
	public String addUserServices(UserServices us);
	public ArrayList<UserServices> getUserServices(String userid,String Location,String pincode,String serviceType);
}
