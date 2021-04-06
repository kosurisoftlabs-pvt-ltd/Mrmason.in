package com.mason.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class Pincode {
	
	private Properties props;
	
	public String getPincodeData(String pincode)
	{
		InputStream is=Pincode.class.getClassLoader().getResourceAsStream("pincode.properties");
		props=new Properties();
		try {
			props.load(is);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return props.getProperty(pincode);
	}

}
