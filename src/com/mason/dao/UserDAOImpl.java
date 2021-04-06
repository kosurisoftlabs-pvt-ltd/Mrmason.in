package com.mason.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.mason.bean.User;
import com.mason.bean.UserBusinessDetails;
import com.mason.bean.UserServices;
import com.mason.utils.EncryptDecrypt;
import com.mason.utils.Mailer;
import com.mason.utils.MasonConnection;
import com.mason.utils.OTPGenerator;
import com.mason.utils.DateFormatter;

public class UserDAOImpl implements UserDAO{

	private static Connection con=null;
	private Properties props;
	private int noofrecords=0;
	
	
	public String registerUser(User user) {
		// TODO Auto-generated method stub
		String message=null,otp;
		int i=0,i1=0;
		PreparedStatement pst,pst1;
		props=new Properties();
		InputStream is=UserDAOImpl.class.getClassLoader().getResourceAsStream("localResources.properties");
		
		try
		{
			props.load(is);
			con=MasonConnection.getConnection();
			pst=con.prepareStatement("INSERT INTO `user_details` (`BOD_SEQ_NO`, `NAME`, `MOBILE_NO`, `EMAIL_ID`, `ADDRESS`, `CITY`, `STATE`, `DISTRICT`, `PINCODE_NO`, `REGISTRATION_DATE`, `VERIFIED`, `STATUS`, `USER_TYPES`, `PASSWORD`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",Statement.RETURN_GENERATED_KEYS);
			pst1=con.prepareStatement("INSERT INTO `user_otp_details` (`OTP_SEQ_NO`, `USER_MOBILE`, `OTP`) VALUES (?, ?, ?);",Statement.RETURN_GENERATED_KEYS);
			pst.setInt(1, user.getBod_seq_no());
			pst.setString(2, user.getName());
			pst.setString(3, user.getMobileNo());
			pst.setString(4, user.getEmailId());
			pst.setString(5, user.getAddress());
			pst.setString(6, user.getCity());
			pst.setString(7, user.getState());
			pst.setString(8, user.getDistrict());
			pst.setString(9, user.getPincodeNo());
			pst.setString(10, new DateFormatter().getSysDateandTime());
			pst.setString(11, "-1");
			pst.setString(12, "-1");
			pst.setString(13, user.getUserTypes());
			pst.setString(14, user.getPassword());
			
			otp=OTPGenerator.generateRandomChars(user.getMobileNo(),6);
			
			pst1.setInt(1, user.getBod_seq_no());
			pst1.setString(2, user.getMobileNo());
			pst1.setString(3, otp);
			
			i=pst.executeUpdate();
			i1=pst1.executeUpdate();
			new EncryptDecrypt();
			String enc=EncryptDecrypt.encrypt(user.getEmailId());
			if(i>0 && i1>0)
			{
				Mailer.send(user.getEmailId(), "Thanks for Registering with Mr. Mason", "Thanks for Registering with Mr.Mason. <br> Please verify your email id <a href='"+props.getProperty("mason.servers.verifyemail")+enc+"'>Here</a>");
				//new SmsCallGet().sendOTPMessage(user.getMobileNo(),otp);
//				System.out.println(otp);
//				System.out.println(props.getProperty("mason.localhost.verifyemail")+enc);
				message="Success";
			}	
			else
			{
				message="Fail";
				con.rollback();
			}
		}catch (Exception e) {
			// TODO: handle exception
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
		
		return message;
		
	}

	public ArrayList<User> getUsersDetails(User user, int limit, int offset) {
		// TODO Auto-generated method stub
		ArrayList<User> al = new ArrayList<User>();
		String query = "SELECT * FROM user_details where STATUS IS NOT NULL";
		
		if(user.getPincodeNo()!=null)
		{
			if(user.getPincodeNo()!="")
			{
				query+=" and PINCODE_NO = '"+user.getPincodeNo()+"'";
			}
		}
		
		if(user.getCity()!=null)
		{
			if(user.getCity()!="")
			{
				query+=" and CITY = '"+user.getCity()+"'";
			}
		}
		
		if(user.getRegistrationDate()!=null)
		{
			if(user.getRegistrationDate()!="")
			{
				if(user.getPassword()!=null)
				{
					if(user.getPassword()!="")
					{
						query+=" and Date(REGISTRATION_DATE) between '"+user.getRegistrationDate()+"' and  '"+user.getPassword()+"'";
					}
					else
					{
						query+=" and  Date(REGISTRATION_DATE) = '"+user.getRegistrationDate()+"'";
					}
				}
				else
				{
					query+=" and  Date(REGISTRATION_DATE) = '"+user.getRegistrationDate()+"'";
				}
			}
		}
		query+=" limit "+limit+", "+offset;
//		System.out.println(query);
		
		al = getUsersDetails(query);
		return al;
	}

	public User viewUserProfile(User user) {
		// TODO Auto-generated method stub
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con=MasonConnection.getConnection();
			st=con.createStatement();
			rs=st.executeQuery("SELECT SQL_CALC_FOUND_ROWS * FROM user_details where BOD_SEQ_NO = '"+user.getBod_seq_no()+"'");
			if(rs.next())
			{
				user.setAddress(rs.getString("ADDRESS"));
				user.setCity(rs.getString("CITY"));
				user.setDistrict(rs.getString("DISTRICT"));
				user.setEmailId(rs.getString("EMAIL_ID"));
				user.setMobileNo(rs.getString("MOBILE_NO"));
				user.setName(rs.getString("NAME"));
				user.setPassword(rs.getString("PASSWORD"));
				user.setPincodeNo(rs.getString("PINCODE_NO"));
				user.setRegistrationDate(rs.getString("REGISTRATION_DATE"));
				user.setState(rs.getString("STATE"));
				user.setStatus(rs.getString("STATUS"));
				user.setUserTypes(rs.getString("USER_TYPES"));
				user.setVerified(rs.getString("VERIFIED"));
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return user;
	}

	public String updateUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getEmailId(String emailid) {
		// TODO Auto-generated method stub
		String query="SELECT * FROM user_details where EMAIL_ID = '"+emailid+"'";
		String message="";
		Statement st=null;
		ResultSet rs;
		try
		{
			con=MasonConnection.getConnection();
			st=con.createStatement();
			rs=st.executeQuery(query);
			if(rs.next())
			{
				message="Email Exists";
			}
		}
		catch (Exception e) {
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

	@Override
	public String getMobile(String mobile) {
		// TODO Auto-generated method stub
		String query="SELECT * FROM user_details where MOBILE_NO = '"+mobile+"'";
		String message="";
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con=MasonConnection.getConnection();
			st=con.createStatement();
			rs=st.executeQuery(query);
			if(rs.next())
			{
				message="Mobile No. Exists";
			}
		}
		catch (Exception e) {
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

	public String verifyUserEmail(String emailid)
	{
		String query="SELECT * FROM user_details where EMAIL_ID = '"+emailid+"'";
		String message=null,verify="",usertype="";
		Statement st=null;
		ResultSet rs=null;
		try
		{
			props=new Properties();
			InputStream is=UserDAOImpl.class.getClassLoader().getResourceAsStream("localResources.properties");
			props.load(is);
			con=MasonConnection.getConnection();
			st=con.createStatement();
			PreparedStatement pst,pst1;
			rs=st.executeQuery(query);
			if(rs.next())
			{
				usertype = rs.getString("USER_TYPES");
				if(usertype.equals("I,"))
				{
					usertype = "I";
					
				}
				else
				{
					usertype = "U";
					
				}
				if(rs.getString("STATUS").equals("-1"))
				{
					pst=con.prepareStatement("UPDATE `user_details` SET `VERIFIED`=?, `STATUS`=? WHERE `BOD_SEQ_NO`=?");
					pst1=con.prepareStatement("INSERT INTO `login_details` (`USERNAME`, `PASSWORD`, `USERTYPE`, `REFERENCE_ID`, `STATUS`) VALUES (?, ?, ?, ?, ?)",Statement.RETURN_GENERATED_KEYS);

					verify="E";
					
					pst.setString(1, verify);
					pst.setString(2, "A");
					pst.setString(3, rs.getString("BOD_SEQ_NO"));
					
					pst1.setString(1, emailid);
					pst1.setString(2, rs.getString("PASSWORD"));
					pst1.setString(3, usertype);
					pst1.setString(4, rs.getString("BOD_SEQ_NO"));
					pst1.setString(5, "A");
					
					int i=0,j=0;
					i=pst.executeUpdate();
					j=pst1.executeUpdate();
					if(i>0 && j>0)
					{
						message="Email ID Verification Successfull. Please <a href="+props.getProperty("mason.servers.login")+">Login Here</a>";
					}
					else
					{
						con.rollback();
						message="Email ID Verification Failed. Please Try Again.....";
					}
				}
				else
				if(rs.getString("STATUS").equals("I"))
				{
					message="Email ID Blocked by the Admin. Please contact <a href='#'>admin@mrmason.com</a>...";
				}
				else
				if(rs.getString("STATUS").equals("A"))
				{
					verify=rs.getString("VERIFIED");
					if(verify.equals("M"))
					{
						pst=con.prepareStatement("UPDATE `user_details` SET `VERIFIED`=? WHERE `BOD_SEQ_NO`=?");
						verify="B";
						pst.setString(1, verify);
						pst.setString(2, rs.getString("BOD_SEQ_NO"));
						int i=0,j=0;
						i=pst.executeUpdate();
//						System.out.println("i value : "+i);
						if(i>0)
						{
							message="Email ID Verification Successfull. Please <a href="+props.getProperty("mason.localhost.login")+">Login Here</a>";
						}
						else
						{
							con.rollback();
							message="Email ID Verification Failed. Please Try Again.....";
						}
					}
					else
					{
						message="Email ID Already Verified. Please <a href='"+props.getProperty("mason.localhost.login")+"'>Login</a> to Continue...";
					}
				}
			}
		}
		catch (Exception e) {
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
	
	public String validateOTP(String mobileno,String otp)
	{
		String query="SELECT * FROM user_details where MOBILE_NO = '"+mobileno+"'";
		String message=null,verify="",usertype="";
		Statement st=null;
		ResultSet rs=null;
		try
		{
			props=new Properties();
			InputStream is=UserDAOImpl.class.getClassLoader().getResourceAsStream("localResources.properties");
			props.load(is);
			con=MasonConnection.getConnection();
			st=con.createStatement();
			PreparedStatement pst,pst1;
			rs=st.executeQuery(query);
			if(rs.next())
			{
				if(rs.getString("USER_TYPES").equals("I,"))
				{
					usertype = "I";
				}else
				{
					usertype = "U";
				}
				if(rs.getString("STATUS").equals("-1"))
				{
					pst=con.prepareStatement("UPDATE `user_details` SET `VERIFIED`=?, `STATUS`=? WHERE `BOD_SEQ_NO`=?");
					pst1=con.prepareStatement("INSERT INTO `login_details` ( `USERNAME`, `PASSWORD`, `USERTYPE`, `REFERENCE_ID`, `STATUS`) VALUES (?, ?, ?, ?, ?)",Statement.RETURN_GENERATED_KEYS);
					
					verify="M";
					
					pst.setString(1, verify);
					pst.setString(2, "A");
					pst.setString(3, rs.getString("BOD_SEQ_NO"));
					
					pst1.setString(1, rs.getString("EMAIL_ID"));
					pst1.setString(2, rs.getString("PASSWORD"));
					pst1.setString(3, usertype);
					pst1.setString(4, rs.getString("BOD_SEQ_NO"));
					pst1.setString(5, "A");
					
					int i=0,j=0;
					i=pst.executeUpdate();
					j=pst1.executeUpdate();
					if(i>0 && j>0)
					{
						message="Mobile No. Verification Successfull. Please <a href="+props.getProperty("mason.localhost.login")+">Login Here</a>";
					}
					else
					{
						con.rollback();
						message="Mobile No. Verification Failed. Please Try Again.....";
					}
				}
				else
				if(rs.getString("STATUS").equals("I"))
				{
					message="Mobile No. Blocked by the Admin. Please contact <a href='#'>admin@mrmason.com</a>...";
				}
				else
				if(rs.getString("STATUS").equals("A"))
				{
					verify=rs.getString("VERIFIED");
					if(verify.equals("E"))
					{
						pst=con.prepareStatement("UPDATE `user_details` SET `VERIFIED`=? WHERE `BOD_SEQ_NO`=?");
						verify="B";
						pst.setString(1, verify);
						pst.setString(2, rs.getString("BOD_SEQ_NO"));
						int i=0;
						i=pst.executeUpdate();
						if(i>0)
						{
							con.rollback();
							message="Mobile No. Verification Successfull. Please <a href="+props.getProperty("mason.localhost.login")+">Login Here</a>";
						}
						else
						{
							message="Mobile No. Verification Failed. Please Try Again.....";
						}
					}
					else
					{
						message="Mobile No. Already Verified. Please <a href='"+props.getProperty("mason.localhost.login")+"'>Login</a> to Continue...";
					}
				}
			}
		}
		catch (Exception e) {
			// TODO: handle exception
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
		return message;
	}
	
	public boolean validateOTP1(String mobileno,String otp)
	{
		String query="SELECT * FROM user_otp_details where USER_MOBILE = '"+mobileno+"' and OTP = '"+otp+"'";
		boolean b=false;
		Statement st=null;
		ResultSet rs=null;
		try
		{
			props=new Properties();
			InputStream is=UserDAOImpl.class.getClassLoader().getResourceAsStream("localResources.properties");
			props.load(is);
			con=MasonConnection.getConnection();
			st=con.createStatement();
			rs=st.executeQuery(query);
			if(rs.next())
			{
				b=true;
			}
		}
		catch (Exception e) {
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
		return b;
	}
	
	public String changeUserPassword(String userid,String oldPassword,String newPassword)
	{
		String message = "";
		PreparedStatement pst=null,pst1=null,pst2=null;
		try
		{
			if(comparePassword(userid,oldPassword,newPassword))
			{
				con=MasonConnection.getConnection();
				pst=con.prepareStatement("UPDATE `user_details` SET `PASSWORD`=? WHERE `BOD_SEQ_NO`=?");
				pst1=con.prepareStatement("UPDATE `login_details` SET `PASSWORD`=? WHERE `REFERENCE_ID`=?");
				
				pst.setString(1, newPassword);
				pst.setString(2, userid);
				
				pst1.setString(1, newPassword);
				pst1.setString(2, userid);

				int i=pst.executeUpdate();
				int j=pst1.executeUpdate();
				checkAndUpdatePassword(userid,oldPassword);
				
				if(i>0 && j>0)
				{
					message="Password Updated Successfully";
				}
			}
			else
			{
				message="Old Password doesn't match.";
			}
			
		}catch(Exception e)
		{
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
		return message;
	}
	
	public boolean comparePassword(String userid,String oldPassword,String newPassword)
	{
		boolean flag = false;
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con=MasonConnection.getConnection();
			st=con.createStatement();
			rs=st.executeQuery("SELECT * FROM user_details where PASSWORD = '"+oldPassword+"' and BOD_SEQ_NO = '"+userid+"'");
			if(rs.next())
			{
				flag=true;
			}
		}catch(Exception e)
		{
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
	
	private boolean checkAndUpdatePassword(String userid,String oldPassword)
	{
		boolean flag=false;
		Statement st=null,st1=null;
		ResultSet rs=null;
		PreparedStatement pst=null;
		try
		{
			con=MasonConnection.getConnection();
			st=con.createStatement();
			rs=st.executeQuery("SELECT count(*) FROM reset_passwords where REFERENCE_ID = '"+userid+"'");
			if(rs.next())
			{
				int count=rs.getInt(1);
				if(count<4)
				{
				pst=con.prepareStatement("INSERT INTO `reset_passwords` (`REFERENCE_ID`, `OLDPASSWORD`, `RESET_DATE`) VALUES (?, ?, sysdate())",Statement.RETURN_GENERATED_KEYS);
				pst.setString(1, userid);
				pst.setString(2, oldPassword);
				int i=pst.executeUpdate();
				if(i>0)
				{
					flag=true;
				}	
				}
				else if(count>4)
				{
					st1=con.createStatement();
					st1.executeQuery("delete from reset_passwords where REFERENCE_ID = '"+userid+"' order by RESET_DATE limit 1");
					
					pst=con.prepareStatement("INSERT INTO `reset_passwords` (`REFERENCE_ID`, `OLDPASSWORD`, `RESET_DATE`) VALUES (?, ?, sysdate())",Statement.RETURN_GENERATED_KEYS);
					pst.setString(1, userid);
					pst.setString(2, oldPassword);
					int i=pst.executeUpdate();
					if(i>0)
					{
						flag=true;
					}	
				}
			}
		}catch(Exception e)
		{
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

	public String addUserBusinessDetails(UserBusinessDetails ubd) {
		// TODO Auto-generated method stub
		String message = "";
		PreparedStatement pst = null;
		
		try {
			con=MasonConnection.getConnection();
			pst=con.prepareStatement("INSERT INTO `user_business_details` (`BUSINESS_NAME`, `BUSINESS_TYPE`, `GSTIN`, `PINCODE`, `DNO`, `STREET`, `LANDMARK`, `CITY`, `STATE`, `STATUS`, `REFERENCE_ID`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",Statement.RETURN_GENERATED_KEYS);
			pst.setString(1, ubd.getBUSINESS_NAME());
			pst.setString(2, ubd.getBUSINESS_TYPE());
			pst.setString(3, ubd.getGSTIN());
			pst.setString(4, ubd.getPINCODE());
			pst.setString(5, ubd.getDNO());
			pst.setString(6, ubd.getSTREET());
			pst.setString(7, ubd.getLANDMARK());
			pst.setString(8, ubd.getCITY());
			pst.setString(9, ubd.getSTATE());
			pst.setString(10, ubd.getSTATUS());
			pst.setString(11, ubd.getREFERENCE_ID());
			
			int i=pst.executeUpdate();
			
			if(i>0)
			{
				message = "Business Added Successfully";
			}
			else
			{
				message = "Unable to add Business at this time. Please try again...";
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
		
		return message;
	}
	
	private String checkBusinessName(UserBusinessDetails ubd)
	{
		String message = "";
		
		return message;
	}

	public String addUserServices(UserServices us) {
		// TODO Auto-generated method stub
		String message = "";
		PreparedStatement pst = null;
		try {
			
			if(checkUserServices(us))
			{
				con=MasonConnection.getConnection();
				
				pst=con.prepareStatement("INSERT INTO `user_services` (`SERVICE_TYPE`, `USER_ID`, `QUALIFICATION`, `EXPERIENCE`, `CERTIFICATE1`, `CERTIFICATE2`, `STATUS`, `AVAILABLE_WITHIN_RANGE`, `PINCODE`, `CITY`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",Statement.RETURN_GENERATED_KEYS);
				pst.setString(1, us.getSERVICE_TYPE());
				pst.setString(2, us.getUSER_ID());
				pst.setString(3, us.getQUALIFICATION());
				pst.setString(4, us.getEXPERIENCE());
				pst.setBinaryStream(5, us.getCERTIFICATE1());
				pst.setBinaryStream(6, us.getCERTIFICATE2());
				pst.setString(7, us.getSTATUS());
				pst.setString(8, us.getAVAILABLE_WITHIN_RANGE());
				pst.setString(9, us.getPINCODE());
				pst.setString(10, us.getCITY());
				int i=pst.executeUpdate();
				
				if(i>0)
				{
					message = "Sevice Added Successfully";
				}
				else
				{
					message = "Unable to add Service at this time. Please try again...";
				}	
			}
			else
			{
				message = "Service Already added.";
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
		
		return message;
	}
	
	private boolean checkUserServices(UserServices us)
	{
		boolean flag=true;
		Statement st=null;
		ResultSet rs=null;
		try {
				con=MasonConnection.getConnection();
				st=con.createStatement();
				rs=st.executeQuery("SELECT * FROM user_services where SERVICE_TYPE = '"+us.getSERVICE_TYPE()+"' and PINCODE = '"+us.getPINCODE()+"'");
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

	public ArrayList<UserServices> getUserServices(String userid, String Location, String pincode, String serviceType) {
		// TODO Auto-generated method stub
		
		ArrayList<UserServices> al=new ArrayList<UserServices>();
		al=getUserServices("");
		
		return null;
	}
	
	private ArrayList<UserServices> getUserServices(String query) 
	{
		ArrayList<UserServices> al=new ArrayList<UserServices>();
		Statement st=null;
		ResultSet rs=null;
		try
		{
			con=MasonConnection.getConnection();
			st=con.createStatement();
			rs=st.executeQuery(query);
			while(rs.next())
			{
				UserServices us=new UserServices();
				us.setUSER_SERVICES_ID(rs.getInt("USER_SERVICES_ID"));
				us.setUSER_ID(rs.getString("USER_ID"));
				us.setSERVICE_TYPE(rs.getString("SERVICE_TYPE"));
				us.setEXPERIENCE(rs.getString("EXPERIENCE"));
				us.setQUALIFICATION(rs.getString("QUALIFICATION"));
				us.setCERTIFICATE1(rs.getBinaryStream("CERTIFICATE1"));
				us.setCERTIFICATE2(rs.getBinaryStream("CERTIFICATE2"));
				us.setSTATUS(rs.getString("STATUS"));
				us.setAVAILABLE_WITHIN_RANGE(rs.getString("AVAILABLE_WITHIN_RANGE"));
				
				al.add(us);
			}
		}catch (Exception e) {
			// TODO: handle exception
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
	
	private ArrayList<User> getUsersDetails(String query)
	{
		ArrayList<User> al=new ArrayList<User>();
		Statement st=null;
		ResultSet rs=null;
		
		try
		{
			con = MasonConnection.getConnection();
			st=con.createStatement();
			rs=st.executeQuery(query);
			while(rs.next())
			{
				User u=new User();
				
				u.setBod_seq_no(rs.getInt("BOD_SEQ_NO"));
				u.setName(rs.getString("NAME"));
				u.setMobileNo(rs.getString("MOBILE_NO"));
				u.setEmailId(rs.getString("EMAIL_ID"));
				u.setAddress(rs.getString("ADDRESS"));
				u.setCity(rs.getString("CITY"));
				u.setState(rs.getString("STATE"));
				u.setDistrict(rs.getString("DISTRICT"));
				u.setRegistrationDate(rs.getString("REGISTRATION_DATE"));
				u.setPincodeNo(rs.getString("PINCODE_NO"));
				u.setVerified(rs.getString("VERIFIED"));
				u.setStatus(rs.getString("STATUS"));
				
				String usertypes[]=rs.getString("USER_TYPES").split(",");
				String utype="";
				for(int i=0;i<usertypes.length;i++) 
				{ 
					if(usertypes[i].equals("S"))
					{
						utype+=" Service Provider";
					}
					if(usertypes[i].equals("M"))
					{
						utype+=" Manufacturer";
					}
					if(usertypes[i].equals("D"))
					{
						utype+=" Distributor";
					}
					if(usertypes[i].equals("I"))
					{
						utype+="End User";
					}
					if(usertypes[i].equals("A"))
					{
						utype+="Admin User";
					}
				}
				u.setUserTypes(utype);
				
				
				al.add(u);
			}
				rs = st.executeQuery("SELECT FOUND_ROWS()");
			   if(rs.next())
			    this.noofrecords = rs.getInt(1);
		}catch (Exception e) {
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
	
	public ArrayList<UserBusinessDetails> getUserBusinessDetails(User bu,int offset,int limit)
	{
		ArrayList<UserBusinessDetails> al=new ArrayList<UserBusinessDetails>();
		String query = "SELECT * FROM user_business_details where REFERENCE_ID = '"+bu.getBod_seq_no()+"'";
		al = getUserBusinessDetails(query);
		
		return al;
	}
	
	private ArrayList<UserBusinessDetails> getUserBusinessDetails(String query)
	{
		ArrayList<UserBusinessDetails> al=new ArrayList<UserBusinessDetails>();
		Statement st=null;
		ResultSet rs=null;
		
		try
		{
			con = MasonConnection.getConnection();
			st=con.createStatement();
			rs=st.executeQuery(query);
			while(rs.next())
			{
				UserBusinessDetails ubd=new UserBusinessDetails();
				
				ubd.setBD_SEQ_ID(rs.getInt("BD_SEQ_ID"));
				ubd.setBUSINESS_NAME(rs.getString("BUSINESS_NAME"));
				
				ubd.setGSTIN(rs.getString("GSTIN"));
				ubd.setPINCODE(rs.getString("PINCODE"));
				ubd.setDNO(rs.getString("DNO"));
				ubd.setSTREET(rs.getString("STREET"));
				ubd.setLANDMARK(rs.getString("LANDMARK"));
				ubd.setCITY(rs.getString("CITY"));
				ubd.setSTATE(rs.getString("STATE"));
				ubd.setSTATUS(rs.getString("STATUS"));
				ubd.setREFERENCE_ID(rs.getString("REFERENCE_ID"));
				
				String businesstype=rs.getString("BUSINESS_TYPE");
				 
					if(businesstype.equals("M"))
					{
						ubd.setBUSINESS_TYPE("Manufacturer");
					}
					if(businesstype.equals("D"))
					{
						ubd.setBUSINESS_TYPE("Distributor");
					}
					if(businesstype.equals("E"))
					{
						ubd.setBUSINESS_TYPE("Dealer");
					}
					if(businesstype.equals("R"))
					{
						ubd.setBUSINESS_TYPE("Retailer");
					}
				
				al.add(ubd);
			}
				rs = st.executeQuery("SELECT FOUND_ROWS()");
			   if(rs.next())
			    this.noofrecords = rs.getInt(1);
		}catch (Exception e) {
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
	
	public ArrayList<User> getAllUsers()
	{
		ArrayList<User> al = new ArrayList<User>();
		String query = "SELECT SQL_CALC_FOUND_ROWS * FROM user_details";
		al = getUsersDetails(query);
		return al;
	}
	public ArrayList<User> getAllUsers(int offset,int limit)
	{
		ArrayList<User> al = new ArrayList<User>();
		String query = "SELECT SQL_CALC_FOUND_ROWS * FROM user_details  limit "+limit+", "+offset;;
		al = getUsersDetails(query);
		return al;
	}
	
	public int getNoOfRecords()
	{
		return noofrecords;
	}
}
