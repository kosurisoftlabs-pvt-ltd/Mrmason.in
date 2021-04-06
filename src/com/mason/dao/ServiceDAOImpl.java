package com.mason.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.mason.bean.ServiceRequest;
import com.mason.bean.User;
import com.mason.bean.UserServices;
import com.mason.service.UserService;
import com.mason.utils.DateFormatter;
import com.mason.utils.IdGenerator;
import com.mason.utils.Mailer;
import com.mason.utils.MasonConnection;

public class ServiceDAOImpl implements ServiceDAO {

	private static Connection con =null;
	private int noofrecords=0;
	
	public String addServiceRequest(ServiceRequest sr) {
		// TODO Auto-generated method stub
		String message ="",mailmessage ="",username = "";
		ArrayList<User> al=new ArrayList<User>();
		PreparedStatement pst = null, pst1 = null;
		try
		{
			if(checkServiceRequest(sr))
			{
			con=MasonConnection.getConnection();
			//pst = con.prepareStatement("INSERT INTO `service_request_details` (`SERVICE_NAME`, `SERVICE_REQUEST_DATE`, `REQUESTED_BY`, `DESCRIPTION`, `REQ_PINCODE`, `STATUS`, `REMARKS`, `REQUEST_ID`, `SERVICE_DATE`) VALUES (?, sysDate(), ?, ?, ?, ?, ?, ?, ?)",Statement.RETURN_GENERATED_KEYS);
			
			pst = con.prepareStatement("INSERT INTO `service_request_details` (`SERVICE_NAME`, `SERVICE_REQUEST_DATE`, `REQUESTED_BY`, `DESCRIPTION`, `REQ_PINCODE`, `STATUS`, `REMARKS`, `REQUEST_ID`, `SERVICE_DATE`) VALUES (?, sysDate(), ?, ?, ?, ?, ?, ?, ?)",Statement.RETURN_GENERATED_KEYS);

			pst.setString(1, sr.getSERVICE_NAME());
			pst.setString(2, sr.getREQUESTED_BY());
			pst.setString(3, sr.getDESCRIPTION());
			pst.setString(4, sr.getREQ_PINCODE());
			
		
			pst.setString(5, sr.getSTATUS());
			pst.setString(6, "");
			pst.setString(7, new IdGenerator().getServiceRequestID());
			pst.setString(8, sr.getSERVICE_DATE());
			int i =pst.executeUpdate();
			User user=new User();
			user.setBod_seq_no(Integer.parseInt(sr.getREQUESTED_BY()));
			if(i>0)
			{
				
				user = new UserService().viewUserProfile(user);
				message = "!<br>The below User placed a new Service Request in your area.<br>";
				message += "Name :"+user.getName();
				message += "Mobile No :"+user.getMobileNo();
				message +="Email ID :"+user.getEmailId();
				
				if(sr.getSTATUS().equals("R"))
				{
					al= getServicesProvidingUsers(sr);
					for(int p=0;p<al.size();p++)
					{
						User u=al.get(p);
						mailmessage="Hi "+u.getName()+message;
						Mailer.send(u.getEmailId(), "Service Request Alert!", mailmessage);
						//System.out.println("Mail sent to :"+u.getEmailId());
					}
				}
				message = "Request Submitted Successfully.";
			}
			else
			{
				message = "Request Submit Failed. Please try again...";
			}
			}
			else
			{
				message = "Request for Service already Submitted.";
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
		return message;
	}

	public ArrayList<ServiceRequest> getAllServiceRequest(int limit, int maxrows) {
		// TODO Auto-generated method stub
		Statement st=null;
		PreparedStatement pst = null;
		try
		{
			con=MasonConnection.getConnection();
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
		return null;
	}
	
	
	public ArrayList<ServiceRequest> getAllServiceRequest( String servicename , String location, int limit, int maxrows) {
		// TODO Auto-generated method stub
		ArrayList<ServiceRequest> al =new ArrayList<ServiceRequest>();
		String query="SELECT SQL_CALC_FOUND_ROWS * FROM service_request_details where SERVICE_NAME = '"+servicename+"' and pincode = '"+location+"'";
	
		/*if(sr.getSERVICE_NAME()!=null)
		{
			if(sr.getSERVICE_NAME()!="")
			{
				query +=" and SERVICE_NAME = '"+sr.getSERVICE_NAME()+"'";
			}
		}
		
		if(sr.getREQ_PINCODE()!=null || sr.getREQ_PINCODE()!="")
		{
			if(sr.getREQ_PINCODE()!="")
			{
				query +=" and pincode = '"+sr.getREQ_PINCODE()+"'";
			}
		}
		
		int offset = 0;
		query += " order by SERVICE_REQUEST_DATE desc limit " + limit + ", " + offset;*/
		al=getServiceRequest(query);
		return al;
	}
	
	
	
	
	
	

	public ArrayList<ServiceRequest> getServiceRequestByUser(ServiceRequest sr,int limit,int offset) {
		// TODO Auto-generated method stub
		ArrayList<ServiceRequest> al =new ArrayList<ServiceRequest>();
		String query="SELECT SQL_CALC_FOUND_ROWS * FROM service_request_details where REQUESTED_BY = '"+sr.getREQUESTED_BY()+"' ";
		
		if(sr.getSERVICE_NAME()!=null)
		{
			if(sr.getSERVICE_NAME()!="")
			{
				query +=" and SERVICE_NAME = '"+sr.getSERVICE_NAME()+"'";
			}
		}
		
		if(sr.getSERVICE_DATE()!=null || sr.getSERVICE_DATE()!="")
		{
			if(sr.getSERVICE_DATE()!="")
			{
				query +=" and SERVICE_DATE = '"+sr.getSERVICE_DATE()+"'";
			}
		}
		
		query += " order by SERVICE_REQUEST_DATE desc limit " + limit + ", " + offset;
		al=getServiceRequest(query);
		return al;
	}

	public ArrayList<ServiceRequest> getServiceRequestByServiceProvider(String serviceproviderid, ServiceRequest sr, int limit,int maxrows) {
		// TODO Auto-generated method stub
		String query = "SELECT srd.* FROM service_request_details srd inner join user_services us on us.pincode = srd.req_pincode and us.user_id = '"+serviceproviderid+"' and srd.status = 'R'";
		if(sr.getSERVICE_NAME()!=null)
		{
			if(sr.getSERVICE_NAME()!="")
			{
				if(sr.getSERVICE_NAME().equals("All"))
				{}
				else
				{
					query+=" and srd.service_name = '"+sr.getSERVICE_NAME()+"'";
				}
			}
		}
		else
		{
			query+=" and srd.service_name = us.service_type";
		}
		
		if(sr.getSERVICE_DATE()!=null)
		{
			if(sr.getSERVICE_DATE()!="")
			{
				query+=" and srd.service_date = '"+sr.getSERVICE_DATE()+"'";
			}
		}
		
		query+=" group by srd.req_seq_id order by srd.SERVICE_REQUEST_DATE limit "+limit+" , "+maxrows;
		ArrayList<ServiceRequest> al =new ArrayList<ServiceRequest>();
		System.out.println("Query :"+query);
		al=getServiceRequest(query);
		return al;
	}
	
	public ArrayList<ServiceRequest> getServiceRequestByServiceProvider(ServiceRequest sr, int limit,int maxrows) {
		// TODO Auto-generated method stub
		String query = "SELECT srd.* FROM service_request_details srd inner join user_services us on us.pincode = srd.req_pincode and us.user_id = '' and srd.service_name = us.service_type and srd.status = 'R' order by srd.SERVICE_REQUEST_DATE limit "+limit+" , "+maxrows;
		
		ArrayList<ServiceRequest> al =new ArrayList<ServiceRequest>();
		System.out.println("Query :"+query);
		al=getServiceRequest(query);
		return al;
	}

	public String updateServiceRequest(String servicerequesterid, ServiceRequest sr) {
		// TODO Auto-generated method stub
		String message = "";
		Statement st=null;
		PreparedStatement pst = null;
		try
		{
			con=MasonConnection.getConnection();
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
		return message;
	}

	private ArrayList<ServiceRequest> getServiceRequest(String query)
	{
		ArrayList<ServiceRequest> al=new ArrayList<ServiceRequest>();
		Statement st=null;
		ResultSet rs = null, rs1 = null;
		try
		{
			con=MasonConnection.getConnection();
			st=con.createStatement();
			rs = st.executeQuery(query);
			while(rs.next())
			{
				ServiceRequest sr=new ServiceRequest();
				
				sr.setREQ_SEQ_ID(rs.getInt("REQ_SEQ_ID"));
				sr.setSERVICE_NAME(rs.getString("SERVICE_NAME"));
				sr.setDESCRIPTION(rs.getString("DESCRIPTION"));
				sr.setREQUESTED_BY(rs.getString("REQUESTED_BY"));
				sr.setSERVICE_REQUEST_DATE(new DateFormatter().getInSysDateandTime(rs.getString("SERVICE_REQUEST_DATE")));
				sr.setSTATUS(rs.getString("STATUS"));
			/*	sr.setREQ_PINCODE(rs.getString("REQ_PINCODE"));*/
				
				sr.setREQ_PINCODE(rs.getString("REQ_PINCODE"));
				sr.setREMARKS(rs.getString("REMARKS"));
				
				try {
					sr.setSERVICE_DATE(new DateFormatter().getInDate(rs.getString("SERVICE_DATE")));
				} catch (Exception e) {
					// TODO Auto-generated catch block
					sr.setSERVICE_DATE("");
					e.printStackTrace();
				}
				
				sr.setREQUEST_ID(rs.getString("REQUEST_ID"));
				
				
				al.add(sr);
				
			}
				rs1 = st.executeQuery("SELECT FOUND_ROWS()");
				   if(rs1.next())
						this.noofrecords = rs1.getInt(1);
		}catch (Exception e) {
			// TODO: handle exception
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
	private boolean checkServiceRequest(ServiceRequest sr)
	{
		boolean flag = false;
		Statement st=null;
		ResultSet rs= null;
		try
		{
			con=MasonConnection.getConnection();
			st = con.createStatement();
			rs=st.executeQuery("SELECT * FROM service_request_details where requested_by = '"+sr.getREQUESTED_BY()+"' and service_request_date = sysdate() and service_name = '"+sr.getSERVICE_NAME()+"'");
			if(!rs.next())
			{
				flag = true;
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
		return flag;
	}

	public int getNoOfRecords()
	{
		return noofrecords;
	}

	@Override
	public ArrayList<User> getServicesProvidingUsers(ServiceRequest sr) {
		// TODO Auto-generated method stub
		ArrayList<User> al = new ArrayList<User>();
		String query = "SELECT ud.* FROM user_details ud left join user_services us on ud.bod_seq_no = us.user_id where us.pincode like '"+sr.getREQ_PINCODE().substring(0,3)+"%' and SERVICE_TYPE = '"+sr.getSERVICE_NAME()+"'";  /*commented by mahesh kosuri*/
		//String query = "SELECT ud.* FROM user_details ud left join user_services us on ud.bod_seq_no = us.user_id where us.pincode like '"+sr.getWORK_LOCATION().substring(0,3)+"%' and SERVICE_TYPE = '"+sr.getSERVICE_NAME()+"'";  /*added worklocaton by mahesh kosuri*/
		al = getServicesProvidingUsers(query);
		return al;
	}
	
	private ArrayList<User> getServicesProvidingUsers(String query)
	{
		ArrayList<User> al = new ArrayList<User>();
		Statement st = null;
		ResultSet rs = null;
		try
		{
			con = MasonConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while(rs.next())
			{
				User u = new User();
				
				u.setBod_seq_no(rs.getInt("BOD_SEQ_NO"));
				u.setName(rs.getString("NAME"));
				u.setMobileNo(rs.getString("MOBILE_NO"));
				u.setEmailId(rs.getString("EMAIL_ID"));
				u.setAddress(rs.getString("ADDRESS"));
				u.setCity(rs.getString("CITY"));
				u.setState(rs.getString("STATE"));
				u.setDistrict(rs.getString("DISTRICT"));
				u.setPincodeNo(rs.getString("PINCODE_NO"));
				u.setRegistrationDate(rs.getString("REGISTRATION_DATE"));
				u.setVerified(rs.getString("VERIFIED"));
				u.setStatus(rs.getString("STATUS"));
				u.setUserTypes(rs.getString("USER_TYPES"));
				
				al.add(u);
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return al;
	}
	
	public ArrayList<UserServices> getServiceProviderServices(String serviceproviderid,int offset,int maxrows)
	{
		ArrayList<UserServices> al=new ArrayList<UserServices>();
		String query="SELECT SQL_CALC_FOUND_ROWS * FROM user_services where USER_ID  = '"+serviceproviderid+"' limit "+offset+" , "+maxrows;
		
		al=getServiceProviderServices1(query);
		return al;
	}
	public ArrayList<UserServices> getSPServices(UserServices us,int offset,int maxrows)
	{
		ArrayList<UserServices> al=new ArrayList<UserServices>();
		String query="SELECT SQL_CALC_FOUND_ROWS * FROM user_services where USER_ID  = '"+us.getUSER_ID()+"'";
		if(us.getSERVICE_TYPE()!=null)
		{
			if(us.getSERVICE_TYPE()!="")
			{
				if(us.getSERVICE_TYPE().equalsIgnoreCase("ALL")){}else
				{
					query+=" and SERVICE_TYPE = '"+us.getSERVICE_TYPE()+"'";
				}
			}
		}
		if(us.getPINCODE()!=null)
		{
			if(us.getPINCODE()!="")
			{
				query+=" and PINCODE = '"+us.getPINCODE()+"'";
			}
		}
		query+=" limit "+offset+" , "+maxrows;
		
//		System.out.println(query);
		al=getServiceProviderServices1(query);
		return al;
	}
	
	public ArrayList<UserServices> getServiceProviderServices(String serviceproviderid)
	{
		ArrayList<UserServices> al=new ArrayList<UserServices>();
		String query="SELECT SQL_CALC_FOUND_ROWS * FROM user_services where USER_ID  = '"+serviceproviderid+"'";
		
		al=getServiceProviderServices1(query);
		return al;
	}
	private ArrayList<UserServices> getServiceProviderServices1(String query)
	{
		ArrayList<UserServices> al=new ArrayList<UserServices>();
		Statement st=null;
		ResultSet rs = null, rs1 = null;
		try
		{
			con=MasonConnection.getConnection();
			st=con.createStatement();
			rs = st.executeQuery(query);
			while(rs.next())
			{
				UserServices us=new UserServices();
				
				us.setUSER_SERVICES_ID(rs.getInt("USER_SERVICES_ID"));
				us.setSERVICE_TYPE(rs.getString("SERVICE_TYPE"));
				us.setUSER_ID(rs.getString("USER_ID"));
				us.setQUALIFICATION(rs.getString("QUALIFICATION"));
				us.setEXPERIENCE(rs.getString("EXPERIENCE"));
				us.setCERTIFICATE1(rs.getBinaryStream("CERTIFICATE1"));
				us.setAVAILABLE_WITHIN_RANGE(rs.getString("AVAILABLE_WITHIN_RANGE"));
				us.setPINCODE(rs.getString("PINCODE"));
						
				
				
				us.setCITY(rs.getString("CITY"));
				us.setSTATUS(rs.getString("STATUS"));
				al.add(us);
				
			}
				rs1 = st.executeQuery("SELECT FOUND_ROWS()");
				   if(rs1.next())
						this.noofrecords = rs1.getInt(1);
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

	@Override
	public ArrayList<ServiceRequest> getAllServiceRequestsByCriteria(ServiceRequest sr, int limit, int offset) {
		// TODO Auto-generated method stub
		ArrayList<ServiceRequest> al =new ArrayList<ServiceRequest>();
		String query="SELECT SQL_CALC_FOUND_ROWS * FROM service_request_details where REQUESTED_BY != 'null' ";
		
		if(sr.getSERVICE_NAME()!="")
		{
			if(sr.getSERVICE_NAME()!="All")
			{
				query +=" and SERVICE_NAME = '"+sr.getSERVICE_NAME()+"'";
			}
		}
		
		if(sr.getSERVICE_DATE()!=null)
		{
			if(sr.getSERVICE_DATE()!="")
			{
				query +=" and DATE(SERVICE_REQUEST_DATE) > '"+sr.getSERVICE_DATE()+"'";
			}
		}
		
		if(sr.getSTATUS()!="")
		{
			if(sr.getSTATUS()!="All")
			{
				query +=" and STATUS = '"+sr.getSTATUS()+"'";
			}
		}
		
		query += " order by SERVICE_REQUEST_DATE desc limit " + limit + ", " + offset;
		System.out.println(query);
		al=getServiceRequest(query);
		return al;
	}

	@Override
	public ArrayList<UserServices> getAllServices() {
		// TODO Auto-generated method stub
		ArrayList<UserServices> al=new ArrayList<UserServices>();
		String query="SELECT * FROM user_services  group by SERVICE_TYPE";
		
		al=getServiceProviderServices1(query);
		return al;
	}
}
