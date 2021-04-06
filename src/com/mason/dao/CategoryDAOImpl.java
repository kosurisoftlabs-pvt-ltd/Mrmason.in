package com.mason.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.mason.bean.Brand;
import com.mason.bean.Category;
import com.mason.bean.Subcategory;
import com.mason.utils.MasonConnection;

public class CategoryDAOImpl implements CategoryDAO {

	private Connection con= null;
	public String addCategory(Category cat) {
		// TODO Auto-generated method stub
		String message = "";
		PreparedStatement pst= null;
		try
		{
			if(checkCategoryName(cat.getCATEGORY()))
			{
				con=MasonConnection.getConnection();
				pst=con.prepareStatement("INSERT INTO `category_master` (`CATEGORY`, `STATUS`) VALUES (?, ?)",Statement.RETURN_GENERATED_KEYS);
				pst.setString(1, cat.getCATEGORY());
				pst.setString(2, "1");
				int i=pst.executeUpdate();
				if(i>0)
				{
					message = "Category Added Successfully..";
				}
			}
			else
			{
				message = "Category Already Added";
			}
			
			
		}catch (Exception e) {
			// TODO: handle exception
		} finally 
	      {
            try {
				   con.close();
			} catch (Exception e){
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
		
		return message;
	}

	
	public String addSubCategory(Category cat) {
		// TODO Auto-generated method stub
		String message = "";
		PreparedStatement pst= null;
		try
		{
			if(checkSubCategoryName(cat))
			{
				con=MasonConnection.getConnection();
				pst=con.prepareStatement("INSERT INTO `subcategory_master` (`CAT_SEQ`, `SUBCATEGORY`, `STATUS`) VALUES (?, ?, ?)",Statement.RETURN_GENERATED_KEYS);
				pst.setString(1, Integer.valueOf(cat.getCAT_ID()).toString());
				pst.setString(2, cat.getSUBCATEGORY());
				pst.setString(3, "1");
				int i=pst.executeUpdate();
				if(i>0)
				{
					message = "Sub-Category Added Successfully..";
				}
			}
			else
			{
				message = "Sub-Category Already Added";
			}
			
			
		}catch (Exception e) {
			// TODO: handle exception
		} finally 
	      {
            try {
				   con.close();
			} catch (Exception e){
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
		
		return message;
	}

	
	public ArrayList<Category> viewCategory(String catid, String catname) {
		// TODO Auto-generated method stub
		return null;
	}

	
	public ArrayList<Category> viewCategoryCompleteDetails(Category cat) {
		// TODO Auto-generated method stub
		return null;
	}

	
	public String updateCategory(Category cat) {
		// TODO Auto-generated method stub
		return null;
	}

	
	public String updateSubCategory(Category cat) {
		// TODO Auto-generated method stub
		return null;
	}

	private boolean checkCategoryName(String catName)
	{
		boolean flag=true;
		Statement st=null;
		ResultSet rs=null;
		try {
				con=MasonConnection.getConnection();
				st=con.createStatement();
				rs=st.executeQuery("SELECT * FROM category_master where CATEGORY = '"+catName+"'");
				if(rs.next())
				{
					flag=false;
				}
				else
				{
					flag=true;
				}
			} catch (Exception e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
		}finally 
	      {
            try {
				   con.close();
			} catch (Exception e){
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
		
		return flag;
	}

	private boolean checkSubCategoryName(Category cat)
	{
		boolean flag=true;
		Statement st=null;
		ResultSet rs=null;
		try {
				con=MasonConnection.getConnection();
				st=con.createStatement();
				rs=st.executeQuery("SELECT * FROM subcategory_master where CAT_SEQ = '"+cat.getCAT_ID()+"' and SUBCATEGORY = '"+cat.getSUBCATEGORY()+"'");
				if(rs.next())
				{
					flag=false;
				}
				else
				{
					flag=true;
				}
			} catch (Exception e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
		}finally 
	      {
            try {
				   con.close();
			} catch (Exception e){
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
		
		return flag;
	}

	public ArrayList<Category> viewAllCategory() {
		// TODO Auto-generated method stub
		 ArrayList<Category> al=new  ArrayList<Category>();
		 Statement st=null;
			ResultSet rs=null;
			try {
					con=MasonConnection.getConnection();
					st=con.createStatement();
					rs=st.executeQuery("SELECT * FROM category_master");
					while(rs.next())
					{
						Category cat=new Category();
						
						cat.setCAT_ID(rs.getInt("CAT_SEQ"));
						cat.setCATEGORY(rs.getString("CATEGORY"));
						cat.setCAT_STATUS(rs.getString("STATUS"));
						
						al.add(cat);
					}
					
				} catch (Exception e) {
				// TODO Auto-generated catch block
					e.printStackTrace();
			}finally 
		      {
	            try {
					   con.close();
				} catch (Exception e){
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	         }
		 return al;
	}
	
	public ArrayList<Category> viewAllSubCategory()
	{
		ArrayList<Category> al=new  ArrayList<Category>();
		 Statement st=null;
			ResultSet rs=null;
			try {
					con=MasonConnection.getConnection();
					st=con.createStatement();
					rs=st.executeQuery("SELECT cm.*,scm.SUBCAT_SEQ,scm.SUBCATEGORY,scm.STATUS as scmstatus FROM category_master cm left join subcategory_master scm on cm.cat_seq = scm.cat_seq");
					while(rs.next())
					{
						Category cat=new Category();
						
						cat.setCAT_ID(rs.getInt("CAT_SEQ"));
						cat.setCATEGORY(rs.getString("CATEGORY"));
						cat.setSUBCATEGORY(rs.getString("SUBCATEGORY"));
						cat.setCAT_STATUS(rs.getString("STATUS"));
						cat.setSUBCAT_STATUS(rs.getString("scmstatus"));
						
						al.add(cat);
					}
					
				} catch (Exception e) {
				// TODO Auto-generated catch block
					e.printStackTrace();
			}finally 
		      {
	            try {
					   con.close();
				} catch (Exception e){
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	         }
		 return al;
	}
	
	public ArrayList<Category> getCatSubCategory(Category cat)
	{
		ArrayList<Category> al = new ArrayList<Category>();
		Statement st=null;
		ResultSet rs=null;
		try {
				con=MasonConnection.getConnection();
				st=con.createStatement();
				rs=st.executeQuery("SELECT cm.*,scm.SUBCAT_SEQ,scm.SUBCATEGORY,scm.STATUS as scmstatus FROM category_master cm left join subcategory_master scm on cm.cat_seq = scm.cat_seq where cm.CAT_SEQ='"+cat.getCAT_ID()+"'");
				while(rs.next())
				{
					Category cat1=new Category();
					
					cat1.setCAT_ID(rs.getInt("CAT_SEQ"));
					cat1.setCATEGORY(rs.getString("CATEGORY"));
					cat1.setSUBCATEGORY(rs.getString("SUBCATEGORY"));
					cat1.setCAT_STATUS(rs.getString("STATUS"));
					cat1.setSUBCAT_STATUS(rs.getString("scmstatus"));
					
					al.add(cat);
				}
				
			} catch (Exception e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
		}finally 
	      {
            try {
				   con.close();
			} catch (Exception e){
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
		return al;
	}
	
	public ArrayList<Subcategory> viewAllSubCategory(String catid)
	{
		ArrayList<Subcategory> al = new ArrayList<Subcategory>();
		Statement st=null;
		ResultSet rs=null;
		try {
				con=MasonConnection.getConnection();
				st=con.createStatement();
				rs=st.executeQuery("SELECT * FROM subcategory_master  where CAT_SEQ='"+catid+"'");
				while(rs.next())
				{
					Subcategory scat1=new Subcategory();
					
					scat1.setMat_subcat_seq_id(rs.getInt("SUBCAT_SEQ"));
					scat1.setSUBCATEGORY(rs.getString("SUBCATEGORY"));
					scat1.setSTATUS(rs.getString("STATUS"));
					
					al.add(scat1);
				}
				
			} catch (Exception e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
		}finally 
	      {
            try {
				   con.close();
			} catch (Exception e){
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
		return al;
	}
	
	private ArrayList<Category> getCategoryDate(String query)
	{
		ArrayList<Category> al = new ArrayList<Category>();
		Statement st=null;
		ResultSet rs=null;
		try {
				con=MasonConnection.getConnection();
				st=con.createStatement();
				rs=st.executeQuery(query);
				while(rs.next())
				{
					Category cat1=new Category();
					
					cat1.setCAT_ID(rs.getInt("CAT_SEQ"));
					cat1.setCATEGORY(rs.getString("CATEGORY"));
					cat1.setSUBCATEGORY(rs.getString("SUBCATEGORY"));
					cat1.setCAT_STATUS(rs.getString("STATUS"));
					cat1.setSUBCAT_STATUS(rs.getString("scmstatus"));
					
					al.add(cat1);
				}
				
			} catch (Exception e) {
			// TODO Auto-generated catch block
				e.printStackTrace();
		}finally 
	      {
            try {
				   con.close();
			} catch (Exception e){
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
		return al;
	}


	public String addBrand(String brand) {
		// TODO Auto-generated method stub
		PreparedStatement pst = null;
		String message ="";
		try
		{
			if(checkBrand(brand))
			{
				con=MasonConnection.getConnection();
				pst=con.prepareStatement("INSERT INTO `brand_master` (`BRAND_NAME`, `CATEGORY`) VALUES (?, ?)",Statement.RETURN_GENERATED_KEYS);
				pst.setString(1, brand);
				pst.setString(2, "0");
				int i=pst.executeUpdate();
				if(i>0)
				{
					message=brand +" Brand Added Successfully.";
				}
				else
				{
					message=brand +" Brand Add failed. Please try again.";
				}	
			}
			else
			{
				message = "Brand Already Added.";
			}
		}catch (Exception e) {
			// TODO: handle exception
		}finally 
	      {
            try {
				   con.close();
			} catch (Exception e){
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
		return message;
	}


	public ArrayList<Brand> viewAllBrands() {
		// TODO Auto-generated method stub
		Statement st=null;
		ResultSet rs=null;
		ArrayList<Brand> al= new ArrayList<Brand>();
		try
		{
		con=MasonConnection.getConnection();
		st=con.createStatement();
		rs=st.executeQuery("SELECT * FROM brand_master");
		while(rs.next())
		{
			Brand b=new Brand();
			b.setBRAND_SEQ_ID(rs.getInt("BRAND_SEQ_ID"));
			b.setBRAND_NAME(rs.getString("BRAND_NAME"));
			b.setCATEGORY(rs.getString("CATEGORY"));
			
			al.add(b);
		}
		}catch (Exception e) {
			// TODO: handle exception
		}finally 
	      {
            try {
				   con.close();
			} catch (Exception e){
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
		return al;
	}
	
	private boolean checkBrand(String brand)
	{
		boolean flag=false;
		Statement st=null;
		ResultSet rs=null;
		
		try
		{
		con=MasonConnection.getConnection();
		st=con.createStatement();
		rs=st.executeQuery("SELECT * FROM brand_master WHERE brand_name = '"+brand+"'");// and CATEGORY = ''
		if(rs.next())
		{
			flag=false;
		}
		else
		{
			flag=true;
		}
		}catch (Exception e) {
			// TODO: handle exception
		}finally 
	      {
            try {
				   con.close();
			} catch (Exception e){
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
		return flag;
	}
	public HashMap<String,String> getAllCategories()
	{
		HashMap<String,String> hm=new HashMap<String,String>();
		Statement st=null;
		ResultSet rs=null;
		try
		{
		con=MasonConnection.getConnection();
		st=con.createStatement();
		rs=st.executeQuery("SELECT * FROM category_master");
		while(rs.next())
		{
			hm.put(rs.getString("CAT_SEQ"),rs.getString("CATEGORY"));
		}
		}catch (Exception e) {
			// TODO: handle exception
		}finally 
	      {
            try {
				   con.close();
			} catch (Exception e){
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
		return hm;
	}
	
	public HashMap<String,String> getAllSubcategories()
	{
		HashMap<String,String> hm=new HashMap<String,String>();
		Statement st=null;
		ResultSet rs=null;
		try
		{
		con=MasonConnection.getConnection();
		st=con.createStatement();
		rs=st.executeQuery("SELECT * FROM subcategory_master");
		while(rs.next())
		{
			hm.put(rs.getString("SUBCAT_SEQ"),rs.getString("SUBCATEGORY"));
		}
		}catch (Exception e) {
			// TODO: handle exception
		}finally 
	      {
            try {
				   con.close();
			} catch (Exception e){
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
		return hm;
	}


	@Override
	public String getCategoryName(String subcatid) {
		// TODO Auto-generated method stub
		String category="";
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con=MasonConnection.getConnection();
			st=con.createStatement();
			rs=st.executeQuery("SELECT cm.CATEGORY FROM subcategory_master scm join category_master cm on cm.cat_seq = scm.cat_seq  where scm.subcat_seq = '"+subcatid+"';");
			if(rs.next())
			{
				category=rs.getString(1);
			}
		}catch (Exception e) {
			// TODO: handle exception
		}finally 
	      {
            try {
				   con.close();
			} catch (Exception e){
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         }
		return category;
	}
}
