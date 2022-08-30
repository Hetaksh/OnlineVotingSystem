package com.dao1;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;


public class LoginDao 
{
	String sql = "select * from voter where name=? and password=?";
	String url = "jdbc:mysql://localhost/voting";
	String username = "root";
	String password = " ";
	public boolean check(String name, String pass)
	{
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, name);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				return true;
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return false;
	}

}
