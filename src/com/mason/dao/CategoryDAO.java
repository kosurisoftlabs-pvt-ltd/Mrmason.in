package com.mason.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.mason.bean.Brand;
import com.mason.bean.Category;
import com.mason.bean.Subcategory;

public interface CategoryDAO {
	
	public String addCategory(Category cat);
	public String addSubCategory(Category cat);
	public ArrayList<Category> viewCategory(String catid,String catname);
	public ArrayList<Category> viewCategoryCompleteDetails(Category cat);
	public String updateCategory(Category cat);
	public String updateSubCategory(Category cat);
	public ArrayList<Category> viewAllCategory();
	public ArrayList<Category> viewAllSubCategory();
	public ArrayList<Subcategory> viewAllSubCategory(String catid);
	public ArrayList<Category> getCatSubCategory(Category cat);
	public String addBrand(String brand);
	public ArrayList<Brand> viewAllBrands();
	public HashMap<String,String> getAllCategories();
	public HashMap<String,String> getAllSubcategories();
	public String getCategoryName(String subcatid);
}
