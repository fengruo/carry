package com.struts2.imageshow.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DB {
	
	//创建数据库连接
	public static Connection createConn(){
		
		Connection conn = null;
		try {
			//获取mysql数据连接驱动
		    Class.forName("com.mysql.jdbc.Driver");
		    //连接mysql数据库存的字符串
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carry?user=root&password=123456&useUnicode=true&characterEncoding=utf-8&useSSL=false");
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
		    e.printStackTrace();
		}
		return conn;
		
	}
	
	//执行sql语句
	public static PreparedStatement prepare(Connection conn, String sql){
		
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ps;
		
	}
	
	//关闭conn
	public static void close(Connection conn){
		
		try {
			conn.close();
			//设置为null后，java垃圾回收站马上对其进行回收，使它不占用内存。
			conn = null;
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		
	}
	
	//关闭stmt
	public static void close(PreparedStatement stmt){
		
		try {
			stmt.close();
			stmt = null;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	//关闭rs
	public static void close(ResultSet rs){
		
		try {
			rs.close();
			rs = null;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
