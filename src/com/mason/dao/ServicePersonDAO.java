package com.mason.dao;

import java.util.ArrayList;

import com.mason.bean.ServicePerson;
import com.mason.bean.User;

public interface ServicePersonDAO {
	
	public String addServicePerson(ServicePerson sp);
	public ArrayList<ServicePerson> getAllServicePersonDetails();
	public ServicePerson getServicePersonDetailsById(String spid);
	public ArrayList<ServicePerson> getServicePersonDetailsByServiceName(String servicename);
	public ArrayList<ServicePerson> getServicePersonDetailsByServiceProvider(ServicePerson sp);
	public ArrayList<ServicePerson> getServicePersonDetailsByServiceProvider(ServicePerson sp,int limit,int maxrows);
	public ArrayList<ServicePerson> getServicePersonDetailsBySearch(ServicePerson sp);
	public String updateServicePersonDetails(ServicePerson sp);
	public int getNoOfRecords();

}
