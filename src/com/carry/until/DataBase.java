package com.carry.until;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

public class DataBase 
{
	protected Connection conn=null;
	protected Statement  stmt=null;
	protected ResultSet rs=null;
	protected String sqlStr;
	protected PreparedStatement prestmt=null;
	protected boolean isConnect=true;
	 InputStream    in = null;   
	public DataBase()
	{
		try 
		{
			sqlStr="";
			DBConnectionManager dbc=new DBConnectionManager();
			conn=dbc.getConnection();
			stmt=conn.createStatement();
			System.out.println("连接成功。");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("数据库连接失败！");
		}
	}

	public void close() throws Exception
	{
		if(stmt!=null)
		{
			stmt.close();
			stmt=null;
		}
		conn.close();
		conn=null;
	}

	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	
	
}
	
	
 


