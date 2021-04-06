package com.mason.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Base64;

import com.mason.bean.CementDetails;
import com.mason.bean.PaintsDetails;
import com.mason.bean.TilesDetails;
import com.mason.utils.MasonConnection;

public class ProductsDAOImpl implements ProductsDAO {
	
	private static Connection con =null;
	private int noofrecords=0;
	
	public int getNoOfRecords()
	{
		return noofrecords;
	}

	public String addPaint(PaintsDetails pd) {
		// TODO Auto-generated method stub
		String message = "",query="SELECT * FROM product_paints_details where SKUID = '"+pd.getSKUID()+"' and REFERENCE_ID = '"+pd.getREFERENCE_ID()+"'";
		ArrayList<PaintsDetails> al= new ArrayList<PaintsDetails>();
		PreparedStatement pst=null;
		ResultSet rs=null;
		try
		{
			al = getPaintsDetails(query);
			con = MasonConnection.getConnection();
			if(al.size()>0)
			{
				int pid=al.get(0).getPAINTS_SEQ_ID();
				pst = con.prepareStatement("UPDATE `product_paints_details` SET `CATEGORY`=?, `SUBCATEGORY`=?, `MANUFACTURER_NAME`=?, `SPECIAL_NAME`=?, `INTER_EXTER`=?, `WEIGHT`=?, `AVAILABLE_COLORS`=?, `PRICE`=?, `DESCRIPTION`=?, `SPECIFICATION1`=?, `SPECIFICATION2`=?, `SPECIFICATION3`=?, `SPECIFICATION4`=?, `SPECIFICATION5`=?, `DISPLAY`=?, `STATUS`=? WHERE `PAINTS_SEQ_ID`=?");
				
				pst.setString(1, pd.getCATEGORY());
				pst.setString(2, pd.getSUBCATEGORY());
				pst.setString(3, pd.getMANUFACTURER_NAME());
				pst.setString(4, pd.getSPECIAL_NAME());
				pst.setString(5, pd.getINTER_EXTER());
				pst.setString(6, pd.getWEIGHT());
				pst.setString(7, pd.getAVAILABLE_COLORS());
				pst.setString(8, pd.getPRICE());
				pst.setString(9, pd.getDESCRIPTION());
				pst.setString(10, pd.getSPECIFICATION1());
				pst.setString(11, pd.getSPECIFICATION2());
				pst.setString(12, pd.getSPECIFICATION3());
				pst.setString(13, pd.getSPECIFICATION4());
				pst.setString(14, pd.getSPECIFICATION5());
				pst.setString(15, pd.getDISPLAY());
				pst.setString(16, "A");
				pst.setInt(17, pid);
				
				int i = pst.executeUpdate();
				if(i>0)
				{
					message = "Paints Product Saved...";
				}
				else
				{
					message = "Paints Produt Save Failde. Please try again...";
				}	
			}
			else
			{
			pst = con.prepareStatement("INSERT INTO `product_paints_details` (`SKUID`, `CATEGORY`, `SUBCATEGORY`, `MANUFACTURER_NAME`, `SPECIAL_NAME`, `INTER_EXTER`, `WEIGHT`, `AVAILABLE_COLORS`, `PRICE`, `DESCRIPTION`, `SPECIFICATION1`, `SPECIFICATION2`, `SPECIFICATION3`, `SPECIFICATION4`, `SPECIFICATION5`, `DISPLAY`, `STATUS`, `REFERENCE_ID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			
			pst.setString(1, pd.getSKUID());
			pst.setString(2, pd.getCATEGORY());
			pst.setString(3, pd.getSUBCATEGORY());
			pst.setString(4, pd.getMANUFACTURER_NAME());
			pst.setString(5, pd.getSPECIAL_NAME());
			pst.setString(6, pd.getINTER_EXTER());
			pst.setString(7, pd.getWEIGHT());
			pst.setString(8, pd.getAVAILABLE_COLORS());
			pst.setString(9, pd.getPRICE());
			pst.setString(10, pd.getDESCRIPTION());
			if(pd.getSPECIFICATION1()!=null){}else{pd.setSPECIFICATION1("");}
			if(pd.getSPECIFICATION2()!=null){}else{pd.setSPECIFICATION2("");}
			if(pd.getSPECIFICATION3()!=null){}else{pd.setSPECIFICATION3("");}
			if(pd.getSPECIFICATION4()!=null){}else{pd.setSPECIFICATION4("");}
			if(pd.getSPECIFICATION5()!=null){}else{pd.setSPECIFICATION5("");}
				
			pst.setString(11, pd.getSPECIFICATION1());
			pst.setString(12, pd.getSPECIFICATION2());
			pst.setString(13, pd.getSPECIFICATION3());
			pst.setString(14, pd.getSPECIFICATION4());
			pst.setString(15, pd.getSPECIFICATION5());
			pst.setString(16, pd.getDISPLAY());
			pst.setString(17, "A");
			pst.setString(18, pd.getREFERENCE_ID());
			
			int i = pst.executeUpdate();
			if(i>0)
			{
				message = "Paints Product Saved...";
			}
			else
			{
				message = "Paints Produt Save Failde. Please try again...";
			}	
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return message;
	}
	
	public String addPaintSpecs(PaintsDetails pd)
	{
		String message = "",query="SELECT * FROM paints_products_details where SKUID = '"+pd.getSKUID()+"'";
		
		ArrayList<PaintsDetails> al= new ArrayList<PaintsDetails>();
		PreparedStatement pst=null;
		ResultSet rs=null;
		try
		{
			al = getPaintsSpecsDetails(query);
			con = MasonConnection.getConnection();
			if(al.size()>0)
			{
				int pid=al.get(0).getPAINTS_SEQ_ID();
				pst = con.prepareStatement("UPDATE `paints_products_details` SET `CATEGORY`=?, `SUBCATEGORY`=?, `MANUFACTURER_NAME`=?, `SPECIAL_NAME`=?, `PAINT_TYPE`=?, `SPECIFICATION1`=?, `SPECIFICATION2`=?, `SPECIFICATION3`=?, `SPECIFICATION4`=?, `SPECIFICATION5`=?, `DISPLAY_TYPE`=?, `IMAGE`=?, `AVAILABLE_COLORS`=?, `WEIGHTS`=?, `SPECIFICATION6`=?, `SPECIFICATION7`=?, `SPECIFICATION8`=?, `SPECIFICATION9`=?, `SPECIFICATION10`=?, `SPECIFICATION11`=?, `SPECIFICATION12`=? WHERE `PAINTS_SEQ_ID`=?");
				
				pst.setString(1, pd.getCATEGORY());
				pst.setString(2, pd.getSUBCATEGORY());
				pst.setString(3, pd.getMANUFACTURER_NAME());
				pst.setString(4, pd.getSPECIAL_NAME());
				pst.setString(5, pd.getINTER_EXTER());
				
				if(pd.getSPECIFICATION1()!=null){}else{pd.setSPECIFICATION1("");}
				if(pd.getSPECIFICATION2()!=null){}else{pd.setSPECIFICATION2("");}
				if(pd.getSPECIFICATION3()!=null){}else{pd.setSPECIFICATION3("");}
				if(pd.getSPECIFICATION4()!=null){}else{pd.setSPECIFICATION4("");}
				if(pd.getSPECIFICATION5()!=null){}else{pd.setSPECIFICATION5("");}
				if(pd.getSPECIFICATION6()!=null){}else{pd.setSPECIFICATION6("");}
				if(pd.getSPECIFICATION7()!=null){}else{pd.setSPECIFICATION7("");}
				if(pd.getSPECIFICATION8()!=null){}else{pd.setSPECIFICATION8("");}
				if(pd.getSPECIFICATION9()!=null){}else{pd.setSPECIFICATION9("");}
				if(pd.getSPECIFICATION10()!=null){}else{pd.setSPECIFICATION10("");}
				if(pd.getSPECIFICATION11()!=null){}else{pd.setSPECIFICATION11("");}
				if(pd.getSPECIFICATION12()!=null){}else{pd.setSPECIFICATION12("");}
				
				pst.setString(6, pd.getSPECIFICATION1());
				pst.setString(7, pd.getSPECIFICATION2());
				pst.setString(8, pd.getSPECIFICATION3());
				pst.setString(9, pd.getSPECIFICATION4());
				pst.setString(10, pd.getSPECIFICATION5());
				pst.setString(11, "Y");
				pst.setBinaryStream(12, pd.getIMAGE());
				pst.setString(13, pd.getAVAILABLE_COLORS());
				pst.setString(14, pd.getWEIGHT());
				pst.setString(15, pd.getSPECIFICATION6());
				pst.setString(16, pd.getSPECIFICATION7());
				pst.setString(17, pd.getSPECIFICATION8());
				pst.setString(18, pd.getSPECIFICATION9());
				pst.setString(19, pd.getSPECIFICATION10());
				pst.setString(20, pd.getSPECIFICATION11());
				pst.setString(21, pd.getSPECIFICATION12());
				pst.setInt(22, pid);
				
				int i = pst.executeUpdate();
				if(i>0)
				{
					message = "Paints Specs Updated...";
				}
				else
				{
					message = "Paints Specs Save Failed. Please try again...";
				}	
			}
			else
			{
				
			pst = con.prepareStatement("INSERT INTO `paints_products_details` (`CATEGORY`, `SUBCATEGORY`, `MANUFACTURER_NAME`, `SPECIAL_NAME`, `PAINT_TYPE`,"
					+ " `SPECIFICATION1`, `SPECIFICATION2`, `SPECIFICATION3`, `SPECIFICATION4`, `SPECIFICATION5`, `DISPLAY_TYPE`, `IMAGE`, `SKUID`,"
					+ " `AVAILABLE_COLORS`, `WEIGHTS`, `SPECIFICATION6`, `SPECIFICATION7`, `SPECIFICATION8`, `SPECIFICATION9`, `SPECIFICATION10`,"
					+ " `SPECIFICATION11`, `SPECIFICATION12`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			
			pst.setString(1, pd.getCATEGORY());
			pst.setString(2, pd.getSUBCATEGORY());
			pst.setString(3, pd.getMANUFACTURER_NAME());
			pst.setString(4, pd.getSPECIAL_NAME());
			pst.setString(5, pd.getINTER_EXTER());
			if(pd.getSPECIFICATION1()!=null){}else{pd.setSPECIFICATION1("");}
			if(pd.getSPECIFICATION2()!=null){}else{pd.setSPECIFICATION2("");}
			if(pd.getSPECIFICATION3()!=null){}else{pd.setSPECIFICATION3("");}
			if(pd.getSPECIFICATION4()!=null){}else{pd.setSPECIFICATION4("");}
			if(pd.getSPECIFICATION5()!=null){}else{pd.setSPECIFICATION5("");}
			if(pd.getSPECIFICATION6()!=null){}else{pd.setSPECIFICATION6("");}
			if(pd.getSPECIFICATION7()!=null){}else{pd.setSPECIFICATION7("");}
			if(pd.getSPECIFICATION8()!=null){}else{pd.setSPECIFICATION8("");}
			if(pd.getSPECIFICATION9()!=null){}else{pd.setSPECIFICATION9("");}
			if(pd.getSPECIFICATION10()!=null){}else{pd.setSPECIFICATION10("");}
			if(pd.getSPECIFICATION11()!=null){}else{pd.setSPECIFICATION11("");}
			if(pd.getSPECIFICATION12()!=null){}else{pd.setSPECIFICATION12("");}	
			pst.setString(6, pd.getSPECIFICATION1());
			pst.setString(7, pd.getSPECIFICATION2());
			pst.setString(8, pd.getSPECIFICATION3());
			pst.setString(9, pd.getSPECIFICATION4());
			pst.setString(10, pd.getSPECIFICATION5());
			pst.setString(11, "Y");
			pst.setBinaryStream(12, pd.getIMAGE());
			pst.setString(13, pd.getSKUID());
			pst.setString(14, pd.getAVAILABLE_COLORS());
			
			pst.setString(15, pd.getWEIGHT());
			pst.setString(16, pd.getSPECIFICATION6());
			pst.setString(17, pd.getSPECIFICATION7());
			pst.setString(18, pd.getSPECIFICATION8());
			pst.setString(19, pd.getSPECIFICATION9());
			pst.setString(20, pd.getSPECIFICATION10());
			pst.setString(21, pd.getSPECIFICATION11());
			pst.setString(22, pd.getSPECIFICATION12());
			
			int i = pst.executeUpdate();
			if(i>0)
			{
				message = "Paints Specs Saved...";
			}
			else
			{
				message = "Paints Specs Save Failed. Please try again...";
			}	
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return message;
	}

	public ArrayList<PaintsDetails> addBulkPaints(ArrayList<PaintsDetails> alpd) {
		// TODO Auto-generated method stub
		String message = "";
		ArrayList<PaintsDetails> al=new ArrayList<PaintsDetails>();
		Statement st=null;
		PreparedStatement pst = null,pst1 = null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			st=con.createStatement();
			pst = con.prepareStatement("INSERT INTO `product_paints_details` (`SKUID`, `CATEGORY`, `SUBCATEGORY`, `MANUFACTURER_NAME`, `SPECIAL_NAME`, `INTER_EXTER`, `WEIGHT`, `AVAILABLE_COLORS`, `PRICE`, `DESCRIPTION`, `SPECIFICATION1`, `SPECIFICATION2`, `SPECIFICATION3`, `SPECIFICATION4`, `SPECIFICATION5`, `DISPLAY`, `STATUS`, `REFERENCE_ID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			pst1 = con.prepareStatement("UPDATE `product_paints_details` SET `CATEGORY`=?, `SUBCATEGORY`=?, `MANUFACTURER_NAME`=?, `SPECIAL_NAME`=?, `INTER_EXTER`=?, `WEIGHT`=?, `AVAILABLE_COLORS`=?, `PRICE`=?, `DESCRIPTION`=?, `SPECIFICATION1`=?, `SPECIFICATION2`=?, `SPECIFICATION3`=?, `SPECIFICATION4`=?, `SPECIFICATION5`=?, `DISPLAY`=?, `STATUS`=?, `REFERENCE_ID`=? WHERE `PAINTS_SEQ_ID`=?");
			for(int i=0;i<alpd.size();i++)
			{
				PaintsDetails pd=alpd.get(i);
				rs=st.executeQuery("SELECT * FROM product_paints_details where SKUID = '"+pd.getSKUID()+"' and  REFERENCE_ID = '"+pd.getREFERENCE_ID()+"'");
				if(rs.next())
				{
					pst1.setString(1,pd.getCATEGORY());
					pst1.setString(2,pd.getSUBCATEGORY());
					pst1.setString(3,pd.getMANUFACTURER_NAME());
					pst1.setString(4,pd.getSPECIAL_NAME());
					pst1.setString(5,pd.getINTER_EXTER());
					pst1.setString(6,pd.getWEIGHT());
					pst1.setString(7,pd.getAVAILABLE_COLORS());
					pst1.setString(8,pd.getPRICE());
					pst1.setString(9,pd.getDESCRIPTION());
					pst1.setString(10,pd.getSPECIFICATION1());
					pst1.setString(11,pd.getSPECIFICATION2());
					pst1.setString(12,pd.getSPECIFICATION3());
					pst1.setString(13,pd.getSPECIFICATION4());
					pst1.setString(14,pd.getSPECIFICATION5());
					pst1.setString(15,pd.getDISPLAY());
					pst1.setString(16,"A");
					pst1.setString(17,pd.getREFERENCE_ID());
					pst1.setString(18,rs.getString(1));
					
					pst1.addBatch();
					pd.setSTATUS("Updated");
				}
				else
				{
					pst.setString(1,pd.getSKUID());
					pst.setString(2,pd.getCATEGORY());
					pst.setString(3,pd.getSUBCATEGORY());
					pst.setString(4,pd.getMANUFACTURER_NAME());
					pst.setString(5,pd.getSPECIAL_NAME());
					pst.setString(6,pd.getINTER_EXTER());
					pst.setString(7,pd.getWEIGHT());
					pst.setString(8,pd.getAVAILABLE_COLORS());
					pst.setString(9,pd.getPRICE());
					pst.setString(10,pd.getDESCRIPTION());
					pst.setString(11,pd.getSPECIFICATION1());
					pst.setString(12,pd.getSPECIFICATION2());
					pst.setString(13,pd.getSPECIFICATION3());
					pst.setString(14,pd.getSPECIFICATION4());
					pst.setString(15,pd.getSPECIFICATION5());
					pst.setString(16,pd.getDISPLAY());
					pst.setString(17,"A");
					pst.setString(18,pd.getREFERENCE_ID());
					
					pst.addBatch();
					pd.setSTATUS("A");
				}
				al.add(pd);
				rs.close();
			}
			
			int i[] = pst.executeBatch();
			int j[] = pst1.executeBatch();
			
			System.out.println(i.length);
			System.out.println(j.length);
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return al;
	}
	
	public ArrayList<PaintsDetails> addBulkPaintsSpecs(ArrayList<PaintsDetails> alpd) {
		// TODO Auto-generated method stub
		String message = "";
		ArrayList<PaintsDetails> al=new ArrayList<PaintsDetails>();
		Statement st=null;
		PreparedStatement pst = null,pst1 = null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			st=con.createStatement();
			
			pst = con.prepareStatement("INSERT INTO `paints_products_details` (`CATEGORY`, `SUBCATEGORY`, `MANUFACTURER_NAME`, `SPECIAL_NAME`, `PAINT_TYPE`,"
					+ " `SPECIFICATION1`, `SPECIFICATION2`, `SPECIFICATION3`, `SPECIFICATION4`, `SPECIFICATION5`, `DISPLAY_TYPE`, `IMAGE`, `SKUID`,"
					+ " `AVAILABLE_COLORS`, `WEIGHTS`, `SPECIFICATION6`, `SPECIFICATION7`, `SPECIFICATION8`, `SPECIFICATION9`, `SPECIFICATION10`,"
					+ " `SPECIFICATION11`, `SPECIFICATION12`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			pst1 = con.prepareStatement("UPDATE `paints_products_details` SET `CATEGORY`=?, `SUBCATEGORY`=?, `MANUFACTURER_NAME`=?, `SPECIAL_NAME`=?, `PAINT_TYPE`=?,"
					+ " `SPECIFICATION1`=?, `SPECIFICATION2`=?, `SPECIFICATION3`=?, `SPECIFICATION4`=?, `SPECIFICATION5`=?, `DISPLAY_TYPE`=?, `IMAGE`=?, "
					+ "`AVAILABLE_COLORS`=?, `WEIGHTS`=?, `SPECIFICATION6`=?, `SPECIFICATION7`=?, `SPECIFICATION8`=?, `SPECIFICATION9`=?, `SPECIFICATION10`=?,"
					+ " `SPECIFICATION11`=?, `SPECIFICATION12`=? WHERE `PAINTS_SEQ_ID`=?");
			ArrayList<PaintsDetails> alp=new ArrayList<PaintsDetails>();
			PaintsDetails pd=alpd.get(0);
			InputStream is = pd.getIMAGE();
			rs=st.executeQuery("SELECT * FROM paints_products_details where CATEGORY = '"+pd.getCATEGORY()+"' and SUBCATEGORY  = '"+pd.getSUBCATEGORY()+"'");
			while(rs.next())
			{
				PaintsDetails pd1=new PaintsDetails();
				
				pd1.setSKUID(rs.getString("SKUID"));				
				alp.add(pd1);
			}
			boolean flag=false;int pid=0;
			for(int i=0;i<alpd.size();i++)
			{
				pd=alpd.get(i);
				for(int j=0;j<alp.size();j++)
				{
					PaintsDetails cpd=alp.get(j);
					if(pd.getSKUID().equals(cpd.getSKUID()))
					{
						pid=cpd.getPAINTS_SEQ_ID();
						flag = true;
					}
				}
				if(flag)
				{
					pst1.setString(1, pd.getCATEGORY());
					pst1.setString(2, pd.getSUBCATEGORY());
					pst1.setString(3, pd.getMANUFACTURER_NAME());
					pst1.setString(4, pd.getSPECIAL_NAME());
					pst1.setString(5, pd.getINTER_EXTER());
					
					if(pd.getSPECIFICATION1()!=null){}else{pd.setSPECIFICATION1("");}
					if(pd.getSPECIFICATION2()!=null){}else{pd.setSPECIFICATION2("");}
					if(pd.getSPECIFICATION3()!=null){}else{pd.setSPECIFICATION3("");}
					if(pd.getSPECIFICATION4()!=null){}else{pd.setSPECIFICATION4("");}
					if(pd.getSPECIFICATION5()!=null){}else{pd.setSPECIFICATION5("");}
					if(pd.getSPECIFICATION6()!=null){}else{pd.setSPECIFICATION6("");}
					if(pd.getSPECIFICATION7()!=null){}else{pd.setSPECIFICATION7("");}
					if(pd.getSPECIFICATION8()!=null){}else{pd.setSPECIFICATION8("");}
					if(pd.getSPECIFICATION9()!=null){}else{pd.setSPECIFICATION9("");}
					if(pd.getSPECIFICATION10()!=null){}else{pd.setSPECIFICATION10("");}
					if(pd.getSPECIFICATION11()!=null){}else{pd.setSPECIFICATION11("");}
					if(pd.getSPECIFICATION12()!=null){}else{pd.setSPECIFICATION12("");}
					
					pst1.setString(6, pd.getSPECIFICATION1());
					pst1.setString(7, pd.getSPECIFICATION2());
					pst1.setString(8, pd.getSPECIFICATION3());
					pst1.setString(9, pd.getSPECIFICATION4());
					pst1.setString(10, pd.getSPECIFICATION5());
					pst1.setString(11, "Y");
					pst1.setBinaryStream(12, is);
					pst1.setString(13, pd.getAVAILABLE_COLORS());
					pst1.setString(14, pd.getWEIGHT());
					pst1.setString(15, pd.getSPECIFICATION6());
					pst1.setString(16, pd.getSPECIFICATION7());
					pst1.setString(17, pd.getSPECIFICATION8());
					pst1.setString(18, pd.getSPECIFICATION9());
					pst1.setString(19, pd.getSPECIFICATION10());
					pst1.setString(20, pd.getSPECIFICATION11());
					pst1.setString(21, pd.getSPECIFICATION12());
					pst1.setInt(22, pid);
					
					pst1.addBatch();
					pd.setSTATUS("Updated");
					System.out.println(pd.getSTATUS());
					flag=false;
				}
				else
				{
					pst.setString(1, pd.getCATEGORY());
					pst.setString(2, pd.getSUBCATEGORY());
					pst.setString(3, pd.getMANUFACTURER_NAME());
					pst.setString(4, pd.getSPECIAL_NAME());
					pst.setString(5, pd.getINTER_EXTER());
					if(pd.getSPECIFICATION1()!=null){}else{pd.setSPECIFICATION1("");}
					if(pd.getSPECIFICATION2()!=null){}else{pd.setSPECIFICATION2("");}
					if(pd.getSPECIFICATION3()!=null){}else{pd.setSPECIFICATION3("");}
					if(pd.getSPECIFICATION4()!=null){}else{pd.setSPECIFICATION4("");}
					if(pd.getSPECIFICATION5()!=null){}else{pd.setSPECIFICATION5("");}
					if(pd.getSPECIFICATION6()!=null){}else{pd.setSPECIFICATION6("");}
					if(pd.getSPECIFICATION7()!=null){}else{pd.setSPECIFICATION7("");}
					if(pd.getSPECIFICATION8()!=null){}else{pd.setSPECIFICATION8("");}
					if(pd.getSPECIFICATION9()!=null){}else{pd.setSPECIFICATION9("");}
					if(pd.getSPECIFICATION10()!=null){}else{pd.setSPECIFICATION10("");}
					if(pd.getSPECIFICATION11()!=null){}else{pd.setSPECIFICATION11("");}
					if(pd.getSPECIFICATION12()!=null){}else{pd.setSPECIFICATION12("");}	
					pst.setString(6, pd.getSPECIFICATION1());
					pst.setString(7, pd.getSPECIFICATION2());
					pst.setString(8, pd.getSPECIFICATION3());
					pst.setString(9, pd.getSPECIFICATION4());
					pst.setString(10, pd.getSPECIFICATION5());
					pst.setString(11, "Y");
					pst.setBinaryStream(12, is);
					pst.setString(13, pd.getSKUID());
					pst.setString(14, pd.getAVAILABLE_COLORS());
					
					pst.setString(15, pd.getWEIGHT());
					pst.setString(16, pd.getSPECIFICATION6());
					pst.setString(17, pd.getSPECIFICATION7());
					pst.setString(18, pd.getSPECIFICATION8());
					pst.setString(19, pd.getSPECIFICATION9());
					pst.setString(20, pd.getSPECIFICATION10());
					pst.setString(21, pd.getSPECIFICATION11());
					pst.setString(22, pd.getSPECIFICATION12());
					
					pst.addBatch();
					pd.setSTATUS("Saved");
					System.out.println(pd.getSTATUS());
				}
				al.add(pd);
				rs.close();
			}
			
			int i[] = pst.executeBatch();
			int j[] = pst1.executeBatch();
			
//			System.out.println(i.length);
//			System.out.println(j.length);
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return al;
	}

	@Override
	public ArrayList<PaintsDetails> viewSPAllMaterialsDetails(String referenceid) {
		// TODO Auto-generated method stub
		ArrayList<PaintsDetails> al = new ArrayList<PaintsDetails>();
		String query = "SELECT * FROM product_paints_details where REFERENCE_ID = '"+referenceid+"'";
		al = getPaintsDetails(query);
		return al;
	}

	@Override
	public ArrayList<PaintsDetails> viewSPPaintsDetails(PaintsDetails pd,int limit,int offset) {
		// TODO Auto-generated method stub
		ArrayList<PaintsDetails> al = new ArrayList<PaintsDetails>();
		String query = "SELECT SQL_CALC_FOUND_ROWS * FROM product_paints_details where REFERENCE_ID = '"+pd.getREFERENCE_ID()+"'";
		if(pd.getCATEGORY()!=null)
		{
			if(pd.getCATEGORY()!="")
			{
				query +=" and CATEGORY = '"+pd.getCATEGORY()+"'";
			}
		}
		if(pd.getSUBCATEGORY()!=null)
		{
			if(pd.getSUBCATEGORY()!="")
			{
				if(!pd.getSUBCATEGORY().equals("All"))
				{
					query +=" and SUBCATEGORY = '"+pd.getSUBCATEGORY()+"'";
				}
			}
		}
		if(pd.getMANUFACTURER_NAME()!=null)
		{
			if(pd.getMANUFACTURER_NAME()!="")
			{
				if(!pd.getMANUFACTURER_NAME().equals("All"))
				{
					query +=" and MANUFACTURER_NAME = '"+pd.getMANUFACTURER_NAME()+"'";
				}
			}
		}
		query += " limit "+limit+", "+offset;
		al = getPaintsDetails(query);
		return al;
	}
	
	public ArrayList<PaintsDetails> viewASPPaintsDetails(PaintsDetails pd,int limit,int offset){
		// TODO Auto-generated method stub
		ArrayList<PaintsDetails> al = new ArrayList<PaintsDetails>();
		String query = "SELECT SQL_CALC_FOUND_ROWS * FROM paints_products_details where DISPLAY_TYPE is not null";
		if(pd.getCATEGORY()!=null)
		{
			if(pd.getCATEGORY()!="")
			{
				query +=" and CATEGORY = '"+pd.getCATEGORY()+"'";
			}
		}
		if(pd.getSUBCATEGORY()!=null)
		{
			if(pd.getSUBCATEGORY()!="")
			{
				if(!pd.getSUBCATEGORY().equals("All"))
				{
					query +=" and SUBCATEGORY = '"+pd.getSUBCATEGORY()+"'";
				}
			}
		}
		if(pd.getMANUFACTURER_NAME()!=null)
		{
			if(pd.getMANUFACTURER_NAME()!="")
			{
				if(!pd.getMANUFACTURER_NAME().equals("All"))
				{
					query +=" and MANUFACTURER_NAME = '"+pd.getMANUFACTURER_NAME()+"'";
				}
			}
		}
		query += " limit "+limit+", "+offset;
		System.out.println(query);
		al = getAPaintsDetails(query);
		return al;
	}
	
	private ArrayList<PaintsDetails> getPaintsDetails(String query)
	{
		ArrayList<PaintsDetails> al=new ArrayList<PaintsDetails>();
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while(rs.next())
			{
				PaintsDetails pd = new PaintsDetails();
				pd.setPAINTS_SEQ_ID(rs.getInt("PAINTS_SEQ_ID"));
				pd.setSKUID(rs.getString("SKUID"));
				pd.setCATEGORY(rs.getString("CATEGORY"));
				pd.setSUBCATEGORY(rs.getString("SUBCATEGORY"));
				pd.setMANUFACTURER_NAME(rs.getString("MANUFACTURER_NAME"));
				pd.setSPECIAL_NAME(rs.getString("SPECIAL_NAME"));
				pd.setINTER_EXTER(rs.getString("INTER_EXTER"));
				pd.setWEIGHT(rs.getString("WEIGHT"));
				pd.setAVAILABLE_COLORS(rs.getString("AVAILABLE_COLORS"));
				pd.setPRICE(rs.getString("PRICE"));
				pd.setDESCRIPTION(rs.getString("DESCRIPTION"));
				pd.setSPECIFICATION1(rs.getString("SPECIFICATION1"));
				pd.setSPECIFICATION2(rs.getString("SPECIFICATION2"));
				pd.setSPECIFICATION3(rs.getString("SPECIFICATION3"));
				pd.setSPECIFICATION4(rs.getString("SPECIFICATION4"));
				pd.setSPECIFICATION5(rs.getString("SPECIFICATION5"));
				pd.setDISPLAY(rs.getString("DISPLAY"));
				if(rs.getString("STATUS").equals("A"))
				{
					pd.setSTATUS("ACTIVE");	
				}
				else
				{
					pd.setSTATUS("INACTIVE");
				}
				
				pd.setREFERENCE_ID(rs.getString("REFERENCE_ID"));
				
				al.add(pd);
			}
			rs = st.executeQuery("SELECT FOUND_ROWS()");
			   if(rs.next())
					this.noofrecords = rs.getInt(1);
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return al;
	}
	
	private ArrayList<PaintsDetails> getAPaintsDetails(String query)
	{
		ArrayList<PaintsDetails> al=new ArrayList<PaintsDetails>();
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while(rs.next())
			{
				PaintsDetails pd = new PaintsDetails();
				pd.setPAINTS_SEQ_ID(rs.getInt("PAINTS_SEQ_ID"));
				pd.setSKUID(rs.getString("SKUID"));
				pd.setCATEGORY(rs.getString("CATEGORY"));
				pd.setSUBCATEGORY(rs.getString("SUBCATEGORY"));
				pd.setMANUFACTURER_NAME(rs.getString("MANUFACTURER_NAME"));
				pd.setSPECIAL_NAME(rs.getString("SPECIAL_NAME"));
				pd.setINTER_EXTER(rs.getString("PAINT_TYPE"));
				pd.setSPECIFICATION1(rs.getString("SPECIFICATION1"));
				pd.setSPECIFICATION2(rs.getString("SPECIFICATION2"));
				pd.setSPECIFICATION3(rs.getString("SPECIFICATION3"));
				pd.setSPECIFICATION4(rs.getString("SPECIFICATION4"));
				pd.setSPECIFICATION5(rs.getString("SPECIFICATION5"));
				pd.setAVAILABLE_COLORS(rs.getString("AVAILABLE_COLORS"));
				pd.setDISPLAY(rs.getString("DISPLAY_TYPE"));
				pd.setIMAGE(rs.getBinaryStream("IMAGE"));
				
				
				/*String path = this.getClass().getClassLoader().getResource("/images/ServiceImage.png").getPath();
				String fullPath = URLDecoder.decode(path, "UTF-8");
				System.out.println("Full Path :  "+fullPath);*/
				if(rs.getBlob("IMAGE")!=null)
				{
					java.sql.Blob blob = rs.getBlob("IMAGE");
					byte[] photo = blob.getBytes(1, (int) blob.length());
					pd.setImagearray(photo);
					String photo1 = Base64.getEncoder().encodeToString(photo);
					pd.setPAINTSIMAGE(photo1);
				}
				else
				{
//					System.out.println(getClass().getResource("/images/ServiceImage.png"));
					pd.setPAINTSIMAGE("");
				}
				al.add(pd);
			}
			rs = st.executeQuery("SELECT FOUND_ROWS()");
			   if(rs.next())
					this.noofrecords = rs.getInt(1);
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return al;
	}
	
	private ArrayList<PaintsDetails> getPaintsSpecsDetails(String query)
	{
		ArrayList<PaintsDetails> al=new ArrayList<PaintsDetails>();
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while(rs.next())
			{
				PaintsDetails pd = new PaintsDetails();
				pd.setPAINTS_SEQ_ID(rs.getInt("PAINTS_SEQ_ID"));
				pd.setCATEGORY(rs.getString("CATEGORY"));
				pd.setSUBCATEGORY(rs.getString("SUBCATEGORY"));
				pd.setMANUFACTURER_NAME(rs.getString("MANUFACTURER_NAME"));
				pd.setSPECIAL_NAME(rs.getString("SPECIAL_NAME"));
				pd.setINTER_EXTER(rs.getString("PAINT_TYPE"));
				pd.setSPECIFICATION1(rs.getString("SPECIFICATION1"));
				pd.setSPECIFICATION2(rs.getString("SPECIFICATION2"));
				pd.setSPECIFICATION3(rs.getString("SPECIFICATION3"));
				pd.setSPECIFICATION4(rs.getString("SPECIFICATION4"));
				pd.setSPECIFICATION5(rs.getString("SPECIFICATION5"));
				pd.setDISPLAY(rs.getString("DISPLAY_TYPE"));
				pd.setIMAGE(rs.getBinaryStream("IMAGE"));
				pd.setSKUID(rs.getString("SKUID"));
				al.add(pd);
			}
			rs = st.executeQuery("SELECT FOUND_ROWS()");
			   if(rs.next())
					this.noofrecords = rs.getInt(1);
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return al;
	}

	@Override
	public ArrayList<String> getPaintsBrandBySubcategory(String subcategory) {
		// TODO Auto-generated method stub
		ArrayList<String> al=new ArrayList<String>();
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery("SELECT SQL_CALC_FOUND_ROWS * FROM product_paints_details where SUBCATEGORY = '"+subcategory+"' group by MANUFACTURER_NAME");
			
			while(rs.next())
			{
				al.add(rs.getString("MANUFACTURER_NAME"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return al;
	}
	@Override
	public ArrayList<String> getPaintsBrandByCategory(String category) {
		// TODO Auto-generated method stub
		ArrayList<String> al=new ArrayList<String>();
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery("SELECT * FROM product_paints_details where CATEGORY = '"+category+"'");
			while(rs.next())
			{
				al.add(rs.getString("MANUFACTURER_NAME"));
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return al;
	}
	public PaintsDetails viewPaintIndividualDetails(String paintseqid)
	{
		PaintsDetails pd = new PaintsDetails();
		String query="SELECT * FROM product_paints_details where PAINTS_SEQ_ID = '"+paintseqid+"'";
		ArrayList<PaintsDetails> al=new ArrayList<PaintsDetails>();
		al=getPaintsDetails(query);
		pd = al.get(0);
		return pd;
	}
	public PaintsDetails viewAPaintIndividualDetails(String paintseqid)
	{
		PaintsDetails pd = new PaintsDetails();
		String query="SELECT * FROM paints_products_details where PAINTS_SEQ_ID = '"+paintseqid+"'";
		ArrayList<PaintsDetails> al=new ArrayList<PaintsDetails>();
		al=getAPaintsDetails(query);
		pd = al.get(0);
		return pd;
	}
	public boolean updatePaintDetails(PaintsDetails pd)
	{
		boolean b = false;
		PreparedStatement pst=null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			pst = con.prepareStatement("UPDATE `product_paints_details` SET `SKUID`=?, `CATEGORY`=?, `SUBCATEGORY`=?, `MANUFACTURER_NAME`=?, `SPECIAL_NAME`=?, `INTER_EXTER`=?, `WEIGHT`=?, `AVAILABLE_COLORS`=?, `PRICE`=?, `DESCRIPTION`=?, `SPECIFICATION1`=?, `SPECIFICATION2`=?, `SPECIFICATION3`=?, `SPECIFICATION4`=?, `SPECIFICATION5`=?, `DISPLAY`=?, `STATUS`=? WHERE `PAINTS_SEQ_ID`=?");
			
			pst.setString(1, pd.getSKUID());
			pst.setString(2, pd.getCATEGORY());
			pst.setString(3, pd.getSUBCATEGORY());
			pst.setString(4, pd.getMANUFACTURER_NAME());
			pst.setString(5, pd.getSPECIAL_NAME());
			pst.setString(6, pd.getINTER_EXTER());
			pst.setString(7, pd.getWEIGHT());
			pst.setString(8, pd.getAVAILABLE_COLORS());
			pst.setString(9, pd.getPRICE());
			pst.setString(10, pd.getDESCRIPTION());
			pst.setString(11, pd.getSPECIFICATION1());
			pst.setString(12, pd.getSPECIFICATION2());
			pst.setString(13, pd.getSPECIFICATION3());
			pst.setString(14, pd.getSPECIFICATION4());
			pst.setString(15, pd.getSPECIFICATION5());
			pst.setString(16, pd.getDISPLAY());
			pst.setString(17, "A");
			pst.setInt(18, pd.getPAINTS_SEQ_ID());
			
			int i = pst.executeUpdate();
			if(i>0)
			{
				b = true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return b;
	}

	@Override
	public int getPaintsTotalCount(PaintsDetails pd) {
		// TODO Auto-generated method stub
		Statement pst=null;
		ResultSet rs=null;
		int count = 0;
		try
		{
			con = MasonConnection.getConnection();
			pst = con.createStatement();
			rs = pst.executeQuery("SELECT count(*) FROM paints_products_details");
			rs.next();
			count = rs.getInt(1);
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return count;
	}

	@Override
	public ArrayList<PaintsDetails> viewMorePaintsDetails(PaintsDetails pd,int maxrowsperpage,int noofrecords) {
		// TODO Auto-generated method stub
		ArrayList<PaintsDetails> al= new ArrayList<PaintsDetails>();
		//int count = getPaintsTotalCount(pd);
		al = viewASPPaintsDetails(pd, maxrowsperpage, noofrecords);
		return al;
	}

	@Override
	public String addCement(CementDetails cd) {
		// TODO Auto-generated method stub
		String message="";
		int seqid=0;
		String query="SELECT * FROM cement_product_details where CATEGORY = '"+cd.getCATEGORY()+"' and SUBCATEGORY = '"+cd.getSUBCATEGORY()+"' and SPECIAL_NAME = '"+cd.getSPECIAL_NAME()+"' and WEIGHT = '"+cd.getWEIGHT()+"' and MASS = '"+cd.getMASS()+"'  and MANUFACTURER_NAME = '"+cd.getMANUFACTURER_NAME()+"'"; 
		ArrayList<CementDetails> al= new ArrayList<CementDetails>();
		PreparedStatement pst=null;
		Statement st=null;
		ResultSet rs=null;
		try
		{
			al = getCementDetails(query);
			con = MasonConnection.getConnection();
			if(al.size()>0)
			{
				seqid=al.get(0).getSEQID();
				pst = con.prepareStatement("UPDATE `cement_product_details` SET `CATEGORY`=?, `SUBCATEGORY`=?, `MANUFACTURER_NAME`=?, `SPECIAL_NAME`=?, `CEMENT_TYPE`=?, "
						+ "`SPECIFICATION1`=?, `SPECIFICATION2`=?, `SPECIFICATION3`=?, `SPECIFICATION4`=?, `SPECIFICATION5`=?, `SPECIFICATION6`=?, `SPECIFICATION7`=?,"
						+ " `DISPLAY_TYPE`=?, `MASS`=?, `WEIGHT`=?, `IMAGE`=?, `SKUID`=?, `DESCRIPTION`=?, `STATUS`=? WHERE `SEQID`=?");
				
				pst.setString(1,cd.getCATEGORY());
				pst.setString(2,cd.getSUBCATEGORY());
				pst.setString(3,cd.getMANUFACTURER_NAME());
				pst.setString(4,cd.getSPECIAL_NAME());
				pst.setString(5,cd.getCEMENT_TYPE());
				pst.setString(6,cd.getSPECIFICATION1());
				pst.setString(7,cd.getSPECIFICATION2());
				pst.setString(8,cd.getSPECIFICATION3());
				pst.setString(9,cd.getSPECIFICATION4());
				pst.setString(10,cd.getSPECIFICATION5());
				pst.setString(11,cd.getSPECIFICATION6());
				pst.setString(12,cd.getSPECIFICATION7());
				pst.setString(13,"Y");
				pst.setString(14,cd.getMASS());
				pst.setString(15,cd.getWEIGHT());
				pst.setBinaryStream(16,cd.getCEMENT_IMAGE());
				pst.setString(17,cd.getSKUID());
				pst.setString(18,cd.getDESCRIPTION());
				pst.setString(19,"A");
				pst.setInt(20, seqid);
				int i = pst.executeUpdate();
				if(i>0)
				{
					message = cd.getMANUFACTURER_NAME()+" Updated Successfully.";
				}
			}
			else
			{
				pst = con.prepareStatement("INSERT INTO `cement_product_details` (`CATEGORY`, `SUBCATEGORY`, `MANUFACTURER_NAME`, `SPECIAL_NAME`, `CEMENT_TYPE`, `SPECIFICATION1`, `SPECIFICATION2`, `SPECIFICATION3`, `SPECIFICATION4`, `SPECIFICATION5`, `SPECIFICATION6`, `SPECIFICATION7`, `DISPLAY_TYPE`, `MASS`, `WEIGHT`, `IMAGE`, `SKUID`, `DESCRIPTION`, `STATUS`) "
						+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
				pst.setString(1, cd.getCATEGORY());
				pst.setString(2, cd.getSUBCATEGORY());
				pst.setString(3, cd.getMANUFACTURER_NAME());
				pst.setString(4, cd.getSPECIAL_NAME());
				pst.setString(5, cd.getCEMENT_TYPE());
				
				if(cd.getSPECIFICATION1()!=null){}else{cd.setSPECIFICATION1("");}
				if(cd.getSPECIFICATION2()!=null){}else{cd.setSPECIFICATION2("");}
				if(cd.getSPECIFICATION3()!=null){}else{cd.setSPECIFICATION3("");}
				if(cd.getSPECIFICATION4()!=null){}else{cd.setSPECIFICATION4("");}
				if(cd.getSPECIFICATION5()!=null){}else{cd.setSPECIFICATION5("");}
				if(cd.getSPECIFICATION6()!=null){}else{cd.setSPECIFICATION6("");}
				if(cd.getSPECIFICATION7()!=null){}else{cd.setSPECIFICATION7("");}
				
				pst.setString(6, cd.getSPECIFICATION1());
				pst.setString(7, cd.getSPECIFICATION2());
				pst.setString(8, cd.getSPECIFICATION3());
				pst.setString(9, cd.getSPECIFICATION4());
				pst.setString(10, cd.getSPECIFICATION5());
				pst.setString(11, cd.getSPECIFICATION6());
				pst.setString(12, cd.getSPECIFICATION7());
				pst.setString(13, "Y");
				pst.setString(14, cd.getMASS());
				pst.setString(15, cd.getWEIGHT());
				pst.setBinaryStream(16, cd.getCEMENT_IMAGE());
				pst.setString(17, cd.getSKUID());
				pst.setString(18, cd.getDESCRIPTION());
				pst.setString(19, "A");
				
				int i = pst.executeUpdate();
				if(i>0)
				{
					message = cd.getMANUFACTURER_NAME()+" Cement Added Successfully.";
				}
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return message;
	}
	
	private ArrayList<CementDetails> getCementDetails(String query)
	{
		ArrayList<CementDetails> al=new ArrayList<CementDetails>();
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while(rs.next())
			{
				CementDetails cd = new CementDetails();
				cd.setSEQID(rs.getInt("SEQID"));
				cd.setSKUID(rs.getString("SKUID"));
				cd.setCATEGORY(rs.getString("CATEGORY"));
				cd.setSUBCATEGORY(rs.getString("SUBCATEGORY"));
				cd.setMANUFACTURER_NAME(rs.getString("MANUFACTURER_NAME"));
				cd.setSPECIAL_NAME(rs.getString("SPECIAL_NAME"));
				cd.setCEMENT_TYPE(rs.getString("CEMENT_TYPE"));
				cd.setMASS(rs.getString("MASS"));
				cd.setWEIGHT(rs.getString("WEIGHT"));
				cd.setDESCRIPTION(rs.getString("DESCRIPTION"));
				cd.setSPECIFICATION1(rs.getString("SPECIFICATION1"));
				cd.setSPECIFICATION2(rs.getString("SPECIFICATION2"));
				cd.setSPECIFICATION3(rs.getString("SPECIFICATION3"));
				cd.setSPECIFICATION4(rs.getString("SPECIFICATION4"));
				cd.setSPECIFICATION5(rs.getString("SPECIFICATION5"));
				cd.setSPECIFICATION6(rs.getString("SPECIFICATION6"));
				cd.setSPECIFICATION7(rs.getString("SPECIFICATION7"));
				cd.setDISPLAY_TYPE(rs.getString("DISPLAY_TYPE"));
				if(rs.getString("STATUS").equals("A"))
				{
					cd.setSTATUS("ACTIVE");	
				}
				else
				{
					cd.setSTATUS("INACTIVE");
				}
				
				
				al.add(cd);
			}
			rs = st.executeQuery("SELECT FOUND_ROWS()");
			   if(rs.next())
					this.noofrecords = rs.getInt(1);
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return al;
	}

	private ArrayList<CementDetails> getACementDetails(String query)
	{
		ArrayList<CementDetails> al=new ArrayList<CementDetails>();
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while(rs.next())
			{
				CementDetails cd = new CementDetails();
				cd.setSEQID(rs.getInt("SEQID"));
				cd.setSKUID(rs.getString("SKUID"));
				cd.setCATEGORY(rs.getString("CATEGORY"));
				cd.setSUBCATEGORY(rs.getString("SUBCATEGORY"));
				cd.setMANUFACTURER_NAME(rs.getString("MANUFACTURER_NAME"));
				cd.setSPECIAL_NAME(rs.getString("SPECIAL_NAME"));
				cd.setCEMENT_TYPE(rs.getString("CEMENT_TYPE"));
				cd.setSPECIFICATION1(rs.getString("SPECIFICATION1"));
				cd.setSPECIFICATION2(rs.getString("SPECIFICATION2"));
				cd.setSPECIFICATION3(rs.getString("SPECIFICATION3"));
				cd.setSPECIFICATION4(rs.getString("SPECIFICATION4"));
				cd.setSPECIFICATION5(rs.getString("SPECIFICATION5"));
				cd.setSPECIFICATION6(rs.getString("SPECIFICATION6"));
				cd.setSPECIFICATION7(rs.getString("SPECIFICATION7"));
				cd.setMASS(rs.getString("MASS"));
				cd.setWEIGHT(rs.getString("WEIGHT"));
				cd.setDESCRIPTION(rs.getString("DESCRIPTION"));
				cd.setSTATUS(rs.getString("STATUS"));
				cd.setDISPLAY_TYPE(rs.getString("DISPLAY_TYPE"));
				cd.setCEMENT_IMAGE(rs.getBinaryStream("IMAGE"));
				
				
				/*String path = this.getClass().getClassLoader().getResource("/images/ServiceImage.png").getPath();
				String fullPath = URLDecoder.decode(path, "UTF-8");
				System.out.println("Full Path :  "+fullPath);*/
				if(rs.getBlob("IMAGE")!=null)
				{
					java.sql.Blob blob = rs.getBlob("IMAGE");
					byte[] photo = blob.getBytes(1, (int) blob.length());
					cd.setImagearray(photo);
					String photo1 = Base64.getEncoder().encodeToString(photo);
					cd.setIMAGE(photo1);
				}
				else
				{
//					System.out.println(getClass().getResource("/images/ServiceImage.png"));
					cd.setIMAGE("");
				}
				al.add(cd);
			}
			rs = st.executeQuery("SELECT FOUND_ROWS()");
			   if(rs.next())
					this.noofrecords = rs.getInt(1);
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return al;
	}
	
	@Override
	public ArrayList<CementDetails> addBulkCementSpecs(ArrayList<CementDetails> alpd) {
		// TODO Auto-generated method stub
		String message = "";
		ArrayList<CementDetails> al=new ArrayList<CementDetails>();
		Statement st=null;
		PreparedStatement pst = null,pst1 = null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			st=con.createStatement();
			
			pst = con.prepareStatement("INSERT INTO `cement_product_details` (`CATEGORY`, `SUBCATEGORY`, `MANUFACTURER_NAME`, `SPECIAL_NAME`, `CEMENT_TYPE`, `SPECIFICATION1`, `SPECIFICATION2`, `SPECIFICATION3`, `SPECIFICATION4`, `SPECIFICATION5`, `SPECIFICATION6`, `SPECIFICATION7`, `DISPLAY_TYPE`, `MASS`, `WEIGHT`, `IMAGE`, `SKUID`, `DESCRIPTION`, `STATUS`) "
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
			pst1 = con.prepareStatement("UPDATE `cement_product_details` SET `CATEGORY`=?, `SUBCATEGORY`=?, `MANUFACTURER_NAME`=?, `SPECIAL_NAME`=?, `CEMENT_TYPE`=?, "
					+ "`SPECIFICATION1`=?, `SPECIFICATION2`=?, `SPECIFICATION3`=?, `SPECIFICATION4`=?, `SPECIFICATION5`=?, `SPECIFICATION6`=?, `SPECIFICATION7`=?,"
					+ " `DISPLAY_TYPE`=?, `MASS`=?, `WEIGHT`=?, `IMAGE`=?, `SKUID`=?, `DESCRIPTION`=?, `STATUS`=? WHERE `SEQID`=?");
			ArrayList<CementDetails> alp=new ArrayList<CementDetails>();
			CementDetails pd=alpd.get(0);
			InputStream is = pd.getCEMENT_IMAGE();
			rs=st.executeQuery("SELECT * FROM cement_products_details where CATEGORY = '"+pd.getCATEGORY()+"' and SUBCATEGORY  = '"+pd.getSUBCATEGORY()+"'");
			while(rs.next())
			{
				CementDetails pd1=new CementDetails();
				
				pd1.setSKUID(rs.getString("SKUID"));				
				alp.add(pd1);
			}
			boolean flag=false;int pid=0;
			for(int i=0;i<alpd.size();i++)
			{
				pd=alpd.get(i);
				for(int j=0;j<alp.size();j++)
				{
					CementDetails cpd=alp.get(j);
					if(pd.getSKUID().equals(cpd.getSKUID()))
					{
						pid=cpd.getSEQID();
						flag = true;
					}
				}
				if(flag)
				{
					pst1.setString(1, pd.getCATEGORY());
					pst1.setString(2, pd.getSUBCATEGORY());
					pst1.setString(3, pd.getMANUFACTURER_NAME());
					pst1.setString(4, pd.getSPECIAL_NAME());
					pst1.setString(5, pd.getCEMENT_TYPE());
					
					if(pd.getSPECIFICATION1()!=null){}else{pd.setSPECIFICATION1("");}
					if(pd.getSPECIFICATION2()!=null){}else{pd.setSPECIFICATION2("");}
					if(pd.getSPECIFICATION3()!=null){}else{pd.setSPECIFICATION3("");}
					if(pd.getSPECIFICATION4()!=null){}else{pd.setSPECIFICATION4("");}
					if(pd.getSPECIFICATION5()!=null){}else{pd.setSPECIFICATION5("");}
					if(pd.getSPECIFICATION6()!=null){}else{pd.setSPECIFICATION6("");}
					if(pd.getSPECIFICATION7()!=null){}else{pd.setSPECIFICATION7("");}
					
					pst1.setString(6, pd.getSPECIFICATION1());
					pst1.setString(7, pd.getSPECIFICATION2());
					pst1.setString(8, pd.getSPECIFICATION3());
					pst1.setString(9, pd.getSPECIFICATION4());
					pst1.setString(10, pd.getSPECIFICATION5());
					pst1.setString(11, pd.getSPECIFICATION6());
					pst1.setString(12, pd.getSPECIFICATION7());
					pst1.setString(13, "Y");
					
					pst1.setString(14, pd.getMASS());
					pst1.setString(15, pd.getWEIGHT());
					pst1.setBinaryStream(16, is);
					pst1.setString(17, pd.getSKUID());
					pst1.setString(18,pd.getDESCRIPTION());
					pst1.setString(19, "A");
					pst1.setInt(20, pid);
					
					pst1.addBatch();
					pd.setSTATUS("Updated");
					System.out.println(pd.getSTATUS());
					flag=false;
				}
				else
				{
					pst.setString(1, pd.getCATEGORY());
					pst.setString(2, pd.getSUBCATEGORY());
					pst.setString(3, pd.getMANUFACTURER_NAME());
					pst.setString(4, pd.getSPECIAL_NAME());
					pst.setString(5, pd.getCEMENT_TYPE());
					if(pd.getSPECIFICATION1()!=null){}else{pd.setSPECIFICATION1("");}
					if(pd.getSPECIFICATION2()!=null){}else{pd.setSPECIFICATION2("");}
					if(pd.getSPECIFICATION3()!=null){}else{pd.setSPECIFICATION3("");}
					if(pd.getSPECIFICATION4()!=null){}else{pd.setSPECIFICATION4("");}
					if(pd.getSPECIFICATION5()!=null){}else{pd.setSPECIFICATION5("");}
					if(pd.getSPECIFICATION6()!=null){}else{pd.setSPECIFICATION6("");}
					if(pd.getSPECIFICATION7()!=null){}else{pd.setSPECIFICATION7("");}
					pst.setString(6, pd.getSPECIFICATION1());
					pst.setString(7, pd.getSPECIFICATION2());
					pst.setString(8, pd.getSPECIFICATION3());
					pst.setString(9, pd.getSPECIFICATION4());
					pst.setString(10, pd.getSPECIFICATION5());
					pst.setString(11, pd.getSPECIFICATION6());
					pst.setString(12, pd.getSPECIFICATION7());
					pst.setString(13, "Y");
					pst.setString(14, pd.getMASS());
					pst.setString(15, pd.getWEIGHT());
					pst.setBinaryStream(16, is);
					pst.setString(17, pd.getSKUID());
					pst.setString(18, pd.getDESCRIPTION());
					pst.setString(19, "A");
					pst.addBatch();
					pd.setSTATUS("Saved");
					System.out.println(pd.getSTATUS());
				}
				al.add(pd);
				rs.close();
			}
			
			int i[] = pst.executeBatch();
			int j[] = pst1.executeBatch();
			
//			System.out.println(i.length);
//			System.out.println(j.length);
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return al;
	}

	@Override
	public ArrayList<CementDetails> viewASPCementDetails(CementDetails pd, int limit, int offset) {
		// TODO Auto-generated method stub
		ArrayList<CementDetails> al = new ArrayList<CementDetails>();
		String query = "SELECT SQL_CALC_FOUND_ROWS * FROM cement_product_details where DISPLAY_TYPE is not null";
		if(pd.getCATEGORY()!=null)
		{
			if(pd.getCATEGORY()!="")
			{
				query +=" and CATEGORY = '"+pd.getCATEGORY()+"'";
			}
		}
		if(pd.getSUBCATEGORY()!=null)
		{
			if(pd.getSUBCATEGORY()!="")
			{
				if(!pd.getSUBCATEGORY().equals("All"))
				{
					query +=" and SUBCATEGORY = '"+pd.getSUBCATEGORY()+"'";
				}
			}
		}
		if(pd.getMANUFACTURER_NAME()!=null)
		{
			if(pd.getMANUFACTURER_NAME()!="")
			{
				if(!pd.getMANUFACTURER_NAME().equals("All"))
				{
					query +=" and MANUFACTURER_NAME = '"+pd.getMANUFACTURER_NAME()+"'";
				}
			}
		}
		query += " limit "+limit+", "+offset;
		System.out.println(query);
		al = getACementDetails(query);
		return al;
	}

	@Override
	public ArrayList<String> getCementBrandsBySubcategory(String subcategory) {
		// TODO Auto-generated method stub
		ArrayList<String> al=new ArrayList<String>();
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			st = con.createStatement();
			System.out.println("SELECT SQL_CALC_FOUND_ROWS * FROM cement_product_details where SUBCATEGORY = '"+subcategory+"' group by MANUFACTURER_NAME");
			rs = st.executeQuery("SELECT SQL_CALC_FOUND_ROWS * FROM cement_product_details where SUBCATEGORY = '"+subcategory+"' group by MANUFACTURER_NAME");
			
			while(rs.next())
			{
				al.add(rs.getString("MANUFACTURER_NAME"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return al;
	}

	@Override
	public String addTiles(TilesDetails td) {
		// TODO Auto-generated method stub
		String message="";
		int seqid=0;
		String query="SELECT * FROM tiles_product_details where CATEGORY = '"+td.getCATEGORY()+"' and SUBCATEGORY = '"+td.getSUBCATEGORY()+"' and SPECIAL_NAME = '"+td.getSPECIAL_NAME()+"' and NOMINAL_SIZE = '"+td.getNOMINAL_SIZE()+"' and LENGTH = '"+td.getLENGTH()+"'  and MANUFACTURER_NAME = '"+td.getMANUFACTURER_NAME()+"' and WIDTH = '"+td.getWIDTH()+"' and TILES_TYPE = '"+td.getTILES_TYPE()+"'"; 
		ArrayList<TilesDetails> al= new ArrayList<TilesDetails>();
		PreparedStatement pst=null;
		Statement st=null;
		ResultSet rs=null;
		try
		{
			al = getTilesDetails(query);
			con = MasonConnection.getConnection();
			if(al.size()>0)
			{
				seqid=al.get(0).getSEQ_ID();
				pst = con.prepareStatement("UPDATE `tiles_product_details` SET `CATEGORY`=?, `SUBCATEGORY`=?, `MANUFACTURER_NAME`=?, `SPECIAL_NAME`=?, `TILES_TYPE`=?, `NOMINAL_SIZE`=?, "
						+ "`LENGTH`=?, `WIDTH`=?, `THICKNESS`=?, `SKUID`=?, `SPECIFICATION1`=?, `SPECIFICATION2`=?, `SPECIFICATION3`=?, `SPECIFICATION4`=?, `SPECIFICATION5`=?, `SPECIFICATION6`=?,"
						+ " `SPECIFICATION7`=?, `DESCRIPTION`=?, `IMAGE`=?, `DISPLAY_TYPE`=?, `STATUS`=? WHERE `SEQ_ID`=?");
				
				pst.setString(1, td.getCATEGORY());
				pst.setString(2, td.getSUBCATEGORY());
				pst.setString(3, td.getMANUFACTURER_NAME());
				pst.setString(4, td.getSPECIAL_NAME());
				pst.setString(5, td.getTILES_TYPE());
				pst.setString(6, td.getNOMINAL_SIZE());
				pst.setString(7, td.getLENGTH());
				pst.setString(8, td.getWIDTH());
				pst.setString(9, td.getTHICKNESS());
				pst.setString(10, td.getSKUID());
				pst.setString(11,td.getSPECIFICATION1());
				pst.setString(12,td.getSPECIFICATION2());
				pst.setString(13,td.getSPECIFICATION3());
				pst.setString(14,td.getSPECIFICATION4());
				pst.setString(15,td.getSPECIFICATION5());
				pst.setString(16,td.getSPECIFICATION6());
				pst.setString(17,td.getSPECIFICATION7());
				pst.setString(18, td.getDESCRIPTION());
				pst.setBinaryStream(19, td.getTilesImage());
				pst.setString(20, "Y");
				pst.setString(21, "A");
				int i = pst.executeUpdate();
				if(i>0)
				{
					message = td.getMANUFACTURER_NAME()+" Updated Successfully.";
				}
			}
			else
			{
				pst = con.prepareStatement("INSERT INTO `tiles_product_details` (`CATEGORY`, `SUBCATEGORY`, `MANUFACTURER_NAME`, `SPECIAL_NAME`, `TILES_TYPE`, `NOMINAL_SIZE`, `LENGTH`, `WIDTH`, `THICKNESS`, `SKUID`, `SPECIFICATION1`, `SPECIFICATION2`, `SPECIFICATION3`, `SPECIFICATION4`, `SPECIFICATION5`, `SPECIFICATION6`, `SPECIFICATION7`, `DESCRIPTION`, `IMAGE`, `DISPLAY_TYPE`, `STATUS`) "
						+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
				pst.setString(1, td.getCATEGORY());
				pst.setString(2, td.getSUBCATEGORY());
				pst.setString(3, td.getMANUFACTURER_NAME());
				pst.setString(4, td.getSPECIAL_NAME());
				pst.setString(5, td.getTILES_TYPE());
				pst.setString(6, td.getNOMINAL_SIZE());
				pst.setString(7, td.getLENGTH());
				pst.setString(8, td.getWIDTH());
				pst.setString(9, td.getTHICKNESS());
				pst.setString(10, td.getSKUID());
				
				if(td.getSPECIFICATION1()!=null){}else{td.setSPECIFICATION1("");}
				if(td.getSPECIFICATION2()!=null){}else{td.setSPECIFICATION2("");}
				if(td.getSPECIFICATION3()!=null){}else{td.setSPECIFICATION3("");}
				if(td.getSPECIFICATION4()!=null){}else{td.setSPECIFICATION4("");}
				if(td.getSPECIFICATION5()!=null){}else{td.setSPECIFICATION5("");}
				if(td.getSPECIFICATION6()!=null){}else{td.setSPECIFICATION6("");}
				if(td.getSPECIFICATION7()!=null){}else{td.setSPECIFICATION7("");}
				
				pst.setString(11, td.getSPECIFICATION1());
				pst.setString(12, td.getSPECIFICATION2());
				pst.setString(13, td.getSPECIFICATION3());
				pst.setString(14, td.getSPECIFICATION4());
				pst.setString(15, td.getSPECIFICATION5());
				pst.setString(16, td.getSPECIFICATION6());
				pst.setString(17, td.getSPECIFICATION7());
				pst.setString(18, td.getDESCRIPTION());
				pst.setBinaryStream(19, td.getTilesImage());
				pst.setString(20, "Y");
				pst.setString(21, "A");
				
				int i = pst.executeUpdate();
				if(i>0)
				{
					message = td.getMANUFACTURER_NAME()+" Tiles Added Successfully.";
				}
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return message;
	}

	@Override
	public ArrayList<TilesDetails> addBulkTilesSpecs(ArrayList<TilesDetails> alpd) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<TilesDetails> viewASPTilesDetails(TilesDetails td, int limit, int offset) {
		// TODO Auto-generated method stub
		ArrayList<TilesDetails> al = new ArrayList<TilesDetails>();
		String query = "SELECT SQL_CALC_FOUND_ROWS * FROM tiles_product_details where DISPLAY_TYPE is not null";
		if(td.getCATEGORY()!=null)
		{
			if(td.getCATEGORY()!="")
			{
				query +=" and CATEGORY = '"+td.getCATEGORY()+"'";
			}
		}
		if(td.getSUBCATEGORY()!=null)
		{
			if(td.getSUBCATEGORY()!="")
			{
				if(!td.getSUBCATEGORY().equals("All"))
				{
					query +=" and SUBCATEGORY = '"+td.getSUBCATEGORY()+"'";
				}
			}
		}
		if(td.getMANUFACTURER_NAME()!=null)
		{
			if(td.getMANUFACTURER_NAME()!="")
			{
				if(!td.getMANUFACTURER_NAME().equals("All"))
				{
					query +=" and MANUFACTURER_NAME = '"+td.getMANUFACTURER_NAME()+"'";
				}
			}
		}
		query += " limit "+limit+", "+offset;
//		System.out.println(query);
		al = getATilesDetails(query);
		return al;
	}

	@Override
	public ArrayList<String> getTilesBrandsBySubcategory(String subcategory) {
		// TODO Auto-generated method stub
		return null;
	}
	
	private ArrayList<TilesDetails> getTilesDetails(String query)
	{
		ArrayList<TilesDetails> al=new ArrayList<TilesDetails>();
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while(rs.next())
			{
				TilesDetails cd = new TilesDetails();
				cd.setSEQ_ID(rs.getInt("SEQ_ID"));
				cd.setSKUID(rs.getString("SKUID"));
				cd.setCATEGORY(rs.getString("CATEGORY"));
				cd.setSUBCATEGORY(rs.getString("SUBCATEGORY"));
				cd.setMANUFACTURER_NAME(rs.getString("MANUFACTURER_NAME"));
				cd.setSPECIAL_NAME(rs.getString("SPECIAL_NAME"));
				cd.setTILES_TYPE(rs.getString("TILES_TYPE"));
				cd.setNOMINAL_SIZE(rs.getString("NOMINAL_SIZE"));
				cd.setLENGTH(rs.getString("LENGTH"));
				cd.setWIDTH(rs.getString("WIDTH"));
				cd.setTHICKNESS(rs.getString("THICKNESS"));
				cd.setDESCRIPTION(rs.getString("DESCRIPTION"));
				cd.setSPECIFICATION1(rs.getString("SPECIFICATION1"));
				cd.setSPECIFICATION2(rs.getString("SPECIFICATION2"));
				cd.setSPECIFICATION3(rs.getString("SPECIFICATION3"));
				cd.setSPECIFICATION4(rs.getString("SPECIFICATION4"));
				cd.setSPECIFICATION5(rs.getString("SPECIFICATION5"));
				cd.setSPECIFICATION6(rs.getString("SPECIFICATION6"));
				cd.setSPECIFICATION7(rs.getString("SPECIFICATION7"));
				cd.setDISPLAY_TYPE(rs.getString("DISPLAY_TYPE"));
				if(rs.getString("STATUS").equals("A"))
				{
					cd.setSTATUS("ACTIVE");	
				}
				else
				{
					cd.setSTATUS("INACTIVE");
				}
				
				
				al.add(cd);
			}
			rs = st.executeQuery("SELECT FOUND_ROWS()");
			   if(rs.next())
					this.noofrecords = rs.getInt(1);
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return al;
	}
	private ArrayList<TilesDetails> getATilesDetails(String query)
	{
		ArrayList<TilesDetails> al=new ArrayList<TilesDetails>();
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while(rs.next())
			{
				TilesDetails td = new TilesDetails();
				td.setSEQ_ID(rs.getInt("SEQ_ID"));
				td.setSKUID(rs.getString("SKUID"));
				td.setCATEGORY(rs.getString("CATEGORY"));
				td.setSUBCATEGORY(rs.getString("SUBCATEGORY"));
				td.setMANUFACTURER_NAME(rs.getString("MANUFACTURER_NAME"));
				td.setSPECIAL_NAME(rs.getString("SPECIAL_NAME"));
				td.setTILES_TYPE(rs.getString("TILES_TYPE"));
				td.setNOMINAL_SIZE(rs.getString("NOMINAL_SIZE"));
				td.setLENGTH(rs.getString("LENGTH"));
				td.setWIDTH(rs.getString("WIDTH"));
				td.setTHICKNESS(rs.getString("THICKNESS"));
				td.setDESCRIPTION(rs.getString("DESCRIPTION"));
				td.setSPECIFICATION1(rs.getString("SPECIFICATION1"));
				td.setSPECIFICATION2(rs.getString("SPECIFICATION2"));
				td.setSPECIFICATION3(rs.getString("SPECIFICATION3"));
				td.setSPECIFICATION4(rs.getString("SPECIFICATION4"));
				td.setSPECIFICATION5(rs.getString("SPECIFICATION5"));
				td.setSPECIFICATION6(rs.getString("SPECIFICATION6"));
				td.setSPECIFICATION7(rs.getString("SPECIFICATION7"));
				td.setDISPLAY_TYPE(rs.getString("DISPLAY_TYPE"));
				if(rs.getString("STATUS").equals("A"))
				{
					td.setSTATUS("ACTIVE");	
				}
				else
				{
					td.setSTATUS("INACTIVE");
				}
				td.setTilesImage(rs.getBinaryStream("IMAGE"));

				/*String path = this.getClass().getClassLoader().getResource("/images/ServiceImage.png").getPath();
				String fullPath = URLDecoder.decode(path, "UTF-8");
				System.out.println("Full Path :  "+fullPath);*/
				if(rs.getBlob("IMAGE")!=null)
				{
					java.sql.Blob blob = rs.getBlob("IMAGE");
					byte[] photo = blob.getBytes(1, (int) blob.length());
					td.setImagearray(photo);
					String photo1 = Base64.getEncoder().encodeToString(photo);
					td.setIMAGE(photo1);
				}
				else
				{
//					System.out.println(getClass().getResource("/images/ServiceImage.png"));
					td.setIMAGE("");
				}
				al.add(td);
			}
			rs = st.executeQuery("SELECT FOUND_ROWS()");
			   if(rs.next())
					this.noofrecords = rs.getInt(1);
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return al;
	}
}
