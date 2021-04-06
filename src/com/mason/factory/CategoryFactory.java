package com.mason.factory;

import com.mason.dao.CategoryDAO;
import com.mason.dao.CategoryDAOImpl;

public class CategoryFactory {
	
	public CategoryDAO getCategoryObject()
	{
		CategoryDAO catdao = new CategoryDAOImpl();
		
		return catdao;
	}

}
