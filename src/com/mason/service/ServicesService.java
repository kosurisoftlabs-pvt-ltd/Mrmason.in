package com.mason.service;

import java.util.ArrayList;

import com.mason.bean.ServiceRequest;
import com.mason.bean.UserServices;
import com.mason.factory.ServiceRequestFactory;

public class ServicesService {
	
	public String addServiceRequest(ServiceRequest sr)
	{
		return new ServiceRequestFactory().getServiceRequestObj().addServiceRequest(sr);
	}

	public ArrayList<ServiceRequest> getServiceRequests(ServiceRequest sr,int limit,int offset)
	{
		return new ServiceRequestFactory().getServiceRequestObj().getServiceRequestByUser(sr, limit, offset);
	}
	
	public ArrayList<UserServices> getServiceProviderServices(String serviceproviderid,int offset,int maxrows)
	{
		return new ServiceRequestFactory().getServiceRequestObj().getServiceProviderServices(serviceproviderid, offset, maxrows);
	}
	
	public ArrayList<UserServices> getServiceProviderServices(String serviceproviderid)
	{
		return new ServiceRequestFactory().getServiceRequestObj().getServiceProviderServices(serviceproviderid);
	}
	public int getNoOfRecords()
	{
		return new ServiceRequestFactory().getServiceRequestObj().getNoOfRecords();
	}
	public ArrayList<UserServices> getAllServices()
	{
		return new ServiceRequestFactory().getServiceRequestObj().getAllServices();
	}
	
}
