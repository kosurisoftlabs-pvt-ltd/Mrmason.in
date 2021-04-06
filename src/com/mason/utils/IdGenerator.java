package com.mason.utils;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class IdGenerator implements Serializable {
	
	private Connection con;
	private Statement st = null;
	private PreparedStatement pst = null;
	private ResultSet rs = null;
	public String getServiceRequestID()
	{
		String id="";
		int id1 = 0;
		try
		{
			con = MasonConnection.getConnection();
			st = con.createStatement();
			rs = st.executeQuery("SELECT ID FROM mason_ids where id_name = 'SERVICE_REQUEST'");
			rs.next();
			id1=Integer.parseInt(rs.getString(1));
			id="MMKE"+id1+"R";
			pst = con.prepareStatement("UPDATE `mason_ids` SET `ID`=? WHERE `ID_NAME`='SERVICE_REQUEST'");
			pst.setString(1, String.valueOf(id1+1));
			pst.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return id;
	}

}
