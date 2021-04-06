package com.mason.dao;

import java.util.ArrayList;

import com.mason.bean.ServiceRequest;
import com.mason.bean.User;
import com.mason.bean.UserServices;

public interface ServiceDAO {
	
	public String addServiceRequest(ServiceRequest sr);
	public ArrayList<ServiceRequest> getAllServiceRequest(int limit,int offset);
	public ArrayList<ServiceRequest> getAllServiceRequestsByCriteria(ServiceRequest sr,int limit,int offset);
	public ArrayList<ServiceRequest> getServiceRequestByUser(ServiceRequest sr,int limit,int offset);
	public ArrayList<ServiceRequest> getServiceRequestByServiceProvider(String serviceproviderid,ServiceRequest sr,int limit,int offset);
	public ArrayList<UserServices> getAllServices();
	public ArrayList<UserServices> getServiceProviderServices(String serviceproviderid);
	public ArrayList<UserServices> getServiceProviderServices(String serviceproviderid,int offset,int maxrows);
	public ArrayList<UserServices> getSPServices(UserServices us,int offset,int maxrows);
	public String updateServiceRequest(String servicerequesterid,ServiceRequest sr);
	public ArrayList<User> getServicesProvidingUsers(ServiceRequest sr);
	public int getNoOfRecords();
}
