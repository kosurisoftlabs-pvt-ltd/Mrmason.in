package com.mason.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import com.mason.bean.LoginDetails;
import com.mason.utils.EmailChecker;
import com.mason.utils.EncryptDecrypt;
import com.mason.utils.Mailer;
import com.mason.utils.MasonConnection;
import com.mason.utils.OTPGenerator;

public class LoginDAOImpl implements LoginDAO {

	private static Connection con=null;
	private Statement st=null;
	private PreparedStatement pst=null;
	private Properties props;
	
	public Map<String,String> userLogin(LoginDetails login)
	{
		String message=null,status=null,logintype=null,verify=null;
		String query="";
		ResultSet rs;
		Map<String,String> map=new HashMap<String,String>();
		String otp=null;
		props=new Properties();
		InputStream is=UserDAOImpl.class.getClassLoader().getResourceAsStream("localResources.properties");
		try
		{
			props.load(is);
			con=MasonConnection.getConnection();
			st=con.createStatement();
			new EmailChecker();
			if(EmailChecker.isValid(login.getUSERNAME()))
			{
				logintype="E";
				query="SELECT ud.*,ld.* FROM user_details ud left join login_details ld on ud.bod_seq_no = ld.reference_id where ud.email_id = '"+login.getUSERNAME()+"'";
//				System.out.println("Login Type : "+logintype);
			}
			else
			{
				logintype="M";
				query="SELECT ud.*,ld.* FROM user_details ud left join login_details ld on ud.bod_seq_no = ld.reference_id where ud.mobile_no = '"+login.getUSERNAME()+"'";
//				System.out.println("Login Type : "+logintype);
			}
//			System.out.println("Query :"+query);
			rs=st.executeQuery(query);
			if(rs.next())
			{
				if(rs.getString("PASSWORD").equalsIgnoreCase(login.getPASSWORD()))
				{
					status=rs.getString("STATUS");
					verify=rs.getString("VERIFIED");
					new EncryptDecrypt();
					String enc=EncryptDecrypt.encrypt(rs.getString("EMAIL_ID"));
					otp=OTPGenerator.generateRandomChars(login.getUSERNAME(),6);
					if(status.equals("-1"))
					{
						map.put("email", rs.getString("EMAIL_ID"));
						map.put("mobileno", rs.getString("MOBILE_NO"));
						map.put("referenceid", "1");
						map.put("usertypes", rs.getString("USER_TYPES"));
						Mailer.send(rs.getString("EMAIL_ID"), "Mr.Mason Mail Verification!", "Mr.Mason Mail Verification. <br> Please verify your email id <a href='"+props.getProperty("mason.localhost.verifyemail")+"?uid="+enc+"'>Here</a>");
						//new SmsCallGet().sendOTPMessage(user.getMobileNo(),otp);
						map.put("loseqid", "-1");
					}
					else
					if(status.equals("A"))
					{
						if(verify.equals("B"))
						{
							map.put("email", rs.getString("EMAIL_ID"));
							map.put("mobileno", rs.getString("MOBILE_NO"));
							map.put("referenceid", rs.getString("BOD_SEQ_NO"));
							map.put("usertypes", rs.getString("USER_TYPES"));
							map.put("loseqid", "1");
							map.put("usertype", rs.getString("USERTYPE"));
						}
						else
						if(verify.equals("E"))
						{
							if(logintype.equals(verify))
							{
								map.put("email", rs.getString("EMAIL_ID"));
								map.put("mobileno", rs.getString("MOBILE_NO"));
								map.put("referenceid", rs.getString("BOD_SEQ_NO"));
								map.put("usertypes", rs.getString("USER_TYPES"));
								map.put("loseqid", "2");
								map.put("usertype", rs.getString("USERTYPE"));
							}
							else
							{
								message="email id not yet verified....";
								map.put("loseqid", "6");
							}
						}
						else
						if(verify.equals("M"))
						{
							if(logintype.equals(verify))
							{
							map.put("email", rs.getString("EMAIL_ID"));
							map.put("mobileno", rs.getString("MOBILE_NO"));
							map.put("referenceid", rs.getString("BOD_SEQ_NO"));
							map.put("usertypes", rs.getString("USER_TYPES"));
							map.put("loseqid", "3");
							map.put("usertype", rs.getString("USERTYPE"));
							}
							else
							{
								message="Mobile No. not yet verified....";
								map.put("loseqid", "7");
							}
						}
					}
					else
					if(status.equals("IN"))
					{
						map.put("email", rs.getString("EMAIL_ID"));
						map.put("mobileno", rs.getString("MOBILE_NO"));
						map.put("referenceid", rs.getString("BOD_SEQ_NO"));
						map.put("usertypes", rs.getString("USER_TYPES"));
						map.put("loseqid", "4");
						
					}
				}
				else
				{
					map.put("email", rs.getString("EMAIL_ID"));
					map.put("mobileno", rs.getString("MOBILE_NO"));
					map.put("referenceid", rs.getString("BOD_SEQ_NO"));
					map.put("loseqid", "5");
				}
			}
			else
			{
				map.put("email", login.getUSERNAME());
				map.put("loseqid", "0");
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
		return map;
	}
	
	
	public String forgotPassword(String emailid) {
		// TODO Auto-generated method stub
		String logintype=null,otp="";
		String query="",message="",verify="",status="";
		ResultSet rs=null;
		props=new Properties();
		InputStream is=UserDAOImpl.class.getClassLoader().getResourceAsStream("localResources.properties");
		
		try
		{
			props.load(is);
			new EmailChecker();
		if(EmailChecker.isValid(emailid))
		{
			logintype="E";
			query="SELECT * FROM user_details where email_id = '"+emailid+"'";// and (verified = 'E' or verified = 'B')
		}
		else
		{
			logintype="M";
			query="SELECT * FROM user_details where mobile_no = '"+emailid+"'";//  and (verified = 'M' or verified = 'B')
			
		}
		con=MasonConnection.getConnection();
		st=con.createStatement();
		rs=st.executeQuery(query);
		new EncryptDecrypt();
		String enc=EncryptDecrypt.encrypt(emailid);
		if(rs.next())
		{
			status=rs.getString("STATUS");
			verify=rs.getString("VERIFIED");
			if(status.equals("A"))
			{
				otp=OTPGenerator.generateRandomChars(emailid,6);
				if(verify.equals("B"))
				{
					if(logintype.equals("E"))
					{
						Mailer.send(emailid, "Reset Password!", "Please <a href='"+props.getProperty("mason.servers.changePassword")+enc+"'>Click Here</a> to Reset Password.");
						message="Send set new Password link to email id ";
					}
					else
					{
						//new SmsCallGet().sendOTPMessage(user.getMobileNo(),otp);
						message="M";
						updateOTP(emailid);
					}
				}
				else
				if(verify.equals("E"))
				{
					if(logintype.equals("E"))
					{
						Mailer.send(emailid, "Reset Password!", "Please <a href='"+props.getProperty("mason.localhost.changePassword")+enc+"'>Click Here</a> to Reset Password.");
						message="Send set new Password link to email id ";
					}
					else
					{
						//new SmsCallGet().sendOTPMessage(user.getMobileNo(),otp);
						message="Sent OTP to registered mobile no. to validate";
					}
				}
				else
				if(verify.equals("M"))
				{
					if(logintype.equals("E"))
					{
						Mailer.send(emailid, "Mail Verification!", "Please verify your email id <a href='"+props.getProperty("mason.localhost.verifyemail")+enc+"'>Click Here</a> to Verify.");
						message="Send verification link to email id ";
					}
					else
					{
						//new SmsCallGet().sendOTPMessage(user.getMobileNo(),otp);
						message="M";
						updateOTP(emailid);
					}
				}
			}
			else
			if(status.equals("IN"))
			{
				message="Your ID was Disabled by Administrator. Please <a href=''>Contact Admin</a>";
			}
			else
			{
				Mailer.send(emailid, "Mail Verification!", "Please verify your email id <a href='"+props.getProperty("mason.localhost.verifyemail")+enc+"'>Click Here</a> to Verify.");
				//new SmsCallGet().sendOTPMessage(user.getMobileNo(),otp);
				message="Email ID & Mobile No. not yet verified...";
			}
		}
		else
		{
			message="Not yet Registered";
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
	
	public String resetPassword(LoginDetails login)
	{
		String logintype=null,otp="";
		String query="",loginquery="",message="",verify="",status="";
		PreparedStatement pst1=null;
		props=new Properties();
		InputStream is=UserDAOImpl.class.getClassLoader().getResourceAsStream("localResources.properties");
		
		try
		{
			props.load(is);
			new EmailChecker();
//			System.out.println("login username : "+login.getUSERNAME());
		if(EmailChecker.isValid(login.getUSERNAME()))
		{
			logintype="E";
			query="UPDATE `user_details` SET `PASSWORD`='"+login.getPASSWORD()+"' WHERE `EMAIL_ID`='"+login.getUSERNAME()+"'";
			loginquery="update login_details SET `PASSWORD`='"+login.getPASSWORD()+"' where REFERENCE_ID = (select BOD_SEQ_NO from user_details WHERE `EMAIL_ID`='"+login.getUSERNAME()+"')";
		}
		else
		{
			logintype="M";
			query="UPDATE `user_details` SET `PASSWORD`='"+login.getPASSWORD()+"' WHERE `MOBILE_NO`='"+login.getUSERNAME()+"'";
			loginquery="update login_details SET `PASSWORD`='"+login.getPASSWORD()+"' where REFERENCE_ID = (select BOD_SEQ_NO from user_details WHERE `MOBILE_NO`='"+login.getUSERNAME()+"')";
		}
//		System.out.println("Login Type :"+logintype);
		con=MasonConnection.getConnection();
		pst=con.prepareStatement(query);
		pst1=con.prepareStatement(loginquery);
		int i = pst.executeUpdate();
		int j = pst1.executeUpdate();
		if(i>0 && j>0)
		{
			message = "Password Reset Successfully. Please <a href='"+props.getProperty("mason.servers.login")+"'>Login to Continue</a>";
		}
		else
		{
			con.rollback();
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
	
	public String updateOTP(String mobileno)
	{
		String message = null,otp=null;
		
		try
		{
			con=MasonConnection.getConnection();
			otp=OTPGenerator.generateRandomChars(mobileno,6);
			pst=con.prepareStatement("UPDATE `user_otp_details` SET `OTP`=? WHERE `USER_MOBILE`=?");
			pst.setString(1, otp);
			pst.setString(2, mobileno);
			int i=pst.executeUpdate();
			if(i>0)
			{
				message="SUCCESS";
			}
			else
			{
				message="FAIL";
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return message;
	}

}
