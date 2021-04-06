package com.mason.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.mason.bean.ServicePerson;
import com.mason.utils.MasonConnection;

public class ServicePersonDAOImpl implements ServicePersonDAO {
	
	private static Connection con =null;
	private int noofrecords=0;
	
	public int getNoOfRecords()
	{
		return noofrecords;
	}

	public String addServicePerson(ServicePerson sp) {
		// TODO Auto-generated method stub
		String message = "";
		PreparedStatement pst = null;
		try
		{
			con = MasonConnection.getConnection();
			pst = con.prepareStatement("INSERT INTO `service_person_details` (`NAME`, `CONTACT_NO`, `EMAIL_ID`, `EXPERIENCE`, `QUALIFICATION`, `CERTIFICATE`, `PINCODE`, `CITY`, `STATE`, `DISTRICT`, `AVAILABLE_STATUS`, `WITH_IN_RANGE`, `REGISTERED_BY`, `REGISTERED_DATE`, `STATUS`, `SERVICE_TYPE`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate(), ?, ?)");
			
			pst.setString(1,sp.getNAME());
			pst.setString(2,sp.getCONTACT_NO());
			pst.setString(3,sp.getEMAIL_ID());
			pst.setString(4,sp.getEXPERIENCE());
			pst.setString(5,sp.getQUALIFICATION());
			pst.setBinaryStream(6,sp.getCERTIFICATE());
			pst.setString(7,sp.getPINCODE());
			pst.setString(8,sp.getCITY());
			pst.setString(9,sp.getSTATE());
			pst.setString(10,sp.getDISTRICT());
			pst.setString(11,sp.getAVAILABLE_STATUS());
			pst.setString(12,sp.getWITH_IN_RANGE());
			pst.setString(13,sp.getREGISTERED_BY());
			pst.setString(14,sp.getSTATUS());
			pst.setString(15,sp.getSERVICE_TYPE());
			int i = pst.executeUpdate();
			
			if(i>0)
			{
				message = "Service Person added successfully....";
			}
			else
			{
				message = "Service Person add failed. Please try again....";
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

	public ArrayList<ServicePerson> getAllServicePersonDetails() {
		// TODO Auto-generated method stub
		return null;
	}

	public ServicePerson getServicePersonDetailsById(String spid) {
		// TODO Auto-generated method stub
		String query ="SELECT * FROM service_person_details where SER_PER_SEQ_ID = '"+spid+"'";
		ServicePerson sp=new ServicePerson();
		sp= getServicePersonindividualDetails(query);
		return sp;
	}

	public ArrayList<ServicePerson> getServicePersonDetailsByServiceName(String servicename) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList<ServicePerson> getServicePersonDetailsByServiceProvider(ServicePerson sp) {
		ArrayList<ServicePerson> al=new ArrayList<ServicePerson>();
		String query = "SELECT * FROM service_person_details where REGISTERED_BY = '"+sp.getREGISTERED_BY()+"' order by experience desc";
		al=getServicePersonDetails(query);
		return al;
	}
	
	public ArrayList<ServicePerson> getServicePersonDetailsByServiceProvider(ServicePerson sp,int limit,int maxrows) {
		ArrayList<ServicePerson> al=new ArrayList<ServicePerson>();
		String query = "SELECT SQL_CALC_FOUND_ROWS * FROM service_person_details where REGISTERED_BY = '"+sp.getREGISTERED_BY()+"'";
		if(sp.getSERVICE_TYPE()!=null)
		{
			if(sp.getSERVICE_TYPE()!="")
			{
				if(sp.getSERVICE_TYPE()!="Service Type")
				{
					query += " and SERVICE_TYPE ='"+sp.getSERVICE_TYPE()+"'";
				}
			}
		}
		if(sp.getPINCODE()!=null)
		{
			if(sp.getPINCODE()!="")
			{
				query += " and PINCODE ='"+sp.getPINCODE()+"'";
			}
		}
		query += " order by experience desc limit "+limit+", "+maxrows;
		System.out.println(query);
		al=getServicePersonDetails(query);
		return al;
	}

	public ArrayList<ServicePerson> getServicePersonDetailsBySearch(ServicePerson sp) {
		// TODO Auto-generated method stub
		return null;
	}

	public String updateServicePersonDetails(ServicePerson sp) {
		// TODO Auto-generated method stub
		String message = "";
		PreparedStatement pst = null;
		try
		{
			con = MasonConnection.getConnection();
			pst = con.prepareStatement("UPDATE `service_person_details` SET `NAME`=?, `CONTACT_NO`=?, `EXPERIENCE`=?, `QUALIFICATION`=?, `PINCODE`=?, `CITY`=?, `STATE`=?, `DISTRICT`=?, `AVAILABLE_STATUS`=?, `WITH_IN_RANGE`=?, `SERVICE_TYPE`=? WHERE `SER_PER_SEQ_ID`=?");		
			
			pst.setString(1, sp.getNAME());
			pst.setString(2, sp.getCONTACT_NO());
			pst.setString(3, sp.getEXPERIENCE());
			pst.setString(4, sp.getQUALIFICATION());
			pst.setString(5, sp.getPINCODE());
			pst.setString(6, sp.getCITY());
			pst.setString(7, sp.getSTATE());
			pst.setString(8, sp.getDISTRICT());
			pst.setString(9, sp.getAVAILABLE_STATUS());
			pst.setString(10, sp.getWITH_IN_RANGE());
			pst.setString(11, sp.getSERVICE_TYPE());
			pst.setInt(12, sp.getSER_PER_SEQ_ID());
			
			int i = pst.executeUpdate();
			if(i>0)
			{
				message = "Updated Successfully";
			}
		}catch (Exception e) {
			
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return message;
	}

	private ArrayList<ServicePerson> getServicePersonDetails(String query)
	{
		ArrayList<ServicePerson> al=new ArrayList<ServicePerson>();
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while(rs.next())
			{
				ServicePerson sp=new ServicePerson();
				sp.setSER_PER_SEQ_ID(Integer.parseInt(rs.getString("SER_PER_SEQ_ID")));
				sp.setNAME(rs.getString("NAME"));
				sp.setCONTACT_NO(rs.getString("CONTACT_NO"));
				sp.setEMAIL_ID(rs.getString("EMAIL_ID"));
				sp.setEXPERIENCE(rs.getString("EXPERIENCE"));
				sp.setQUALIFICATION(rs.getString("QUALIFICATION"));
				sp.setCERTIFICATE(rs.getBinaryStream("CERTIFICATE"));
				sp.setEXPERIENCE(rs.getString("EXPERIENCE"));
				sp.setPINCODE(rs.getString("PINCODE"));
				sp.setCITY(rs.getString("CITY"));
				sp.setSTATE(rs.getString("STATE"));
				sp.setDISTRICT(rs.getString("DISTRICT"));
				sp.setAVAILABLE_STATUS(rs.getString("AVAILABLE_STATUS"));
				sp.setWITH_IN_RANGE(rs.getString("WITH_IN_RANGE"));
				sp.setSERVICE_TYPE(rs.getString("SERVICE_TYPE"));
				sp.setREGISTERED_BY(rs.getString("REGISTERED_BY"));
				sp.setREGISTERED_DATE(rs.getString("REGISTERED_DATE"));
				
				al.add(sp);
			}
			rs = st.executeQuery("SELECT FOUND_ROWS()");
			   if(rs.next())
					this.noofrecords = rs.getInt(1);
		}catch (Exception e) {
			// TODO: handle exception
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
	
	private ServicePerson getServicePersonindividualDetails(String query)
	{
		ServicePerson sp = new ServicePerson();
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con = MasonConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(query);
			if(rs.next())
			{
				sp.setSER_PER_SEQ_ID(Integer.parseInt(rs.getString("SER_PER_SEQ_ID")));
				sp.setNAME(rs.getString("NAME"));
				sp.setCONTACT_NO(rs.getString("CONTACT_NO"));
				sp.setEMAIL_ID(rs.getString("EMAIL_ID"));
				sp.setEXPERIENCE(rs.getString("EXPERIENCE"));
				sp.setQUALIFICATION(rs.getString("QUALIFICATION"));
				sp.setCERTIFICATE(rs.getBinaryStream("CERTIFICATE"));
				sp.setEXPERIENCE(rs.getString("EXPERIENCE"));
				sp.setPINCODE(rs.getString("PINCODE"));
				sp.setCITY(rs.getString("CITY"));
				sp.setSTATE(rs.getString("STATE"));
				sp.setDISTRICT(rs.getString("DISTRICT"));
				sp.setAVAILABLE_STATUS(rs.getString("AVAILABLE_STATUS"));
				sp.setWITH_IN_RANGE(rs.getString("WITH_IN_RANGE"));
				sp.setSERVICE_TYPE(rs.getString("SERVICE_TYPE"));
				sp.setREGISTERED_BY(rs.getString("REGISTERED_BY"));
				sp.setREGISTERED_DATE(rs.getString("REGISTERED_DATE"));
			}
		}catch (Exception e) {
			// TODO: handle exception
		}finally {
			try {
				con.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return sp;
	}
}
