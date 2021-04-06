package com.mason.factory;

import com.mason.dao.ServiceDAO;
import com.mason.dao.ServiceDAOImpl;

public class ServiceRequestFactory {
	
	public ServiceDAO getServiceRequestObj()
	{
		ServiceDAO serdao = new ServiceDAOImpl();
		return serdao;
	}

}
