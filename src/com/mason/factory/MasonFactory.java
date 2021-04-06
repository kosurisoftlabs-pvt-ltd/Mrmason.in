package com.mason.factory;

import com.mason.dao.CategoryDAO;
import com.mason.dao.CategoryDAOImpl;
import com.mason.dao.ProductsDAO;
import com.mason.dao.ProductsDAOImpl;

public class MasonFactory {
	
	public ProductsDAO getProductObject()
	{
		ProductsDAO proddao = new ProductsDAOImpl();
		
		return proddao;
	}
	
	public CategoryDAO getCategoryObject()
	{
		CategoryDAO proddao = new CategoryDAOImpl();
		
		return proddao;
	}

}
