package com.mason.utils;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class MasonConnection {
	
	private static Properties props;
	private static Connection con;
	
	static
	{
		try
		{
			InputStream is=MasonConnection.class.getClassLoader().getResourceAsStream("dbconfig.properties");
			props=new Properties();
			props.load(is);
			Class.forName(props.getProperty("mason.driverclassname"));
//			System.out.println("Driver Registered....");
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection()
	{
		try
		{
//			con = DriverManager.getConnection(props.getProperty("mason.url"));
			con = DriverManager.getConnection(props.getProperty("mason.url"),props.getProperty("mason.username"),props.getProperty("mason.password"));
//			System.out.println("Connection Established....");
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
	}
	
	public static void main(String args[]) 
	{
		try {
			con=getConnection();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("Hai"+e);
			e.printStackTrace();
			
		}
		
	}

}
