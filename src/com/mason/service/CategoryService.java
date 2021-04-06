package com.mason.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.mason.bean.Brand;
import com.mason.bean.Category;
import com.mason.bean.Subcategory;
import com.mason.factory.CategoryFactory;

public class CategoryService {
	
	public String addCategory(Category cat)
	{
		return new CategoryFactory().getCategoryObject().addCategory(cat);
	}
	
	public String addSubCategory(Category cat)
	{
		return new CategoryFactory().getCategoryObject().addSubCategory(cat);
	}
	
	public ArrayList<Category> getAllCategory()
	{
		return new CategoryFactory().getCategoryObject().viewAllCategory();
	}
	
	public ArrayList<Category> getAllSubCategory()
	{
		return new CategoryFactory().getCategoryObject().viewAllSubCategory();
	}
	
	public String addBrand(String brand)
	{
		return new CategoryFactory().getCategoryObject().addBrand(brand);
	}
	
	public ArrayList<Brand> viewAllBrands()
	{
		return new CategoryFactory().getCategoryObject().viewAllBrands();
	}
	
	public ArrayList<Category> getCatSubCategory(Category cat)
	{
		return new CategoryFactory().getCategoryObject().getCatSubCategory(cat);
	}
	
	public ArrayList<Subcategory> viewAllSubCategory(String catid)
	{
		return new CategoryFactory().getCategoryObject().viewAllSubCategory(catid);
	}
	
	public HashMap<String,String> getAllCategories()
	{
		return new CategoryFactory().getCategoryObject().getAllCategories();
	}
	
	public HashMap<String,String> getAllSubcategories()
	{
		return new CategoryFactory().getCategoryObject().getAllSubcategories();
	}
}
