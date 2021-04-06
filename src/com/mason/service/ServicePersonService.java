package com.mason.service;

import java.util.ArrayList;

import com.mason.bean.ServicePerson;
import com.mason.bean.User;
import com.mason.factory.ServicePersonFactory;

public class ServicePersonService {
	
	public String addServicePerson(ServicePerson sp)
	{
		return new ServicePersonFactory().getServicePersonObject().addServicePerson(sp);
	}
	
	public ArrayList<ServicePerson> getServicePersonDetailsByServiceProvider(ServicePerson sp)
	{
		return new ServicePersonFactory().getServicePersonObject().getServicePersonDetailsByServiceProvider(sp);
	}

	public ArrayList<ServicePerson> getServicePersonDetailsByServiceProvider(ServicePerson sp,int offset,int maxrows)
	{
		return new ServicePersonFactory().getServicePersonObject().getServicePersonDetailsByServiceProvider(sp, offset, maxrows);
	}
	
	public ServicePerson getServicePersonDetailsById(String spid)
	{
		return new ServicePersonFactory().getServicePersonObject().getServicePersonDetailsById(spid);
	}
	
	public String updateServicePerson(ServicePerson sp)
	{
		return new ServicePersonFactory().getServicePersonObject().updateServicePersonDetails(sp);
	}
}
