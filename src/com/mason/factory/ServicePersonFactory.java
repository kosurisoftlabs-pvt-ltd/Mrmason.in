package com.mason.factory;

import com.mason.dao.ServicePersonDAO;
import com.mason.dao.ServicePersonDAOImpl;

public class ServicePersonFactory {
	public ServicePersonDAO getServicePersonObject()
	{
		ServicePersonDAO catdao = new ServicePersonDAOImpl();
		
		return catdao;
	}

}
