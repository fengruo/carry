package com.struts2.imageshow.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DB {
	
	//�������ݿ�����
	public static Connection createConn(){
		
		Connection conn = null;
		try {
			//��ȡmysql������������
		    Class.forName("com.mysql.jdbc.Driver");
		    //����mysql���ݿ����ַ���
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/carry?user=root&password=123456&useUnicode=true&characterEncoding=utf-8&useSSL=false");
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
		    e.printStackTrace();
		}
		return conn;
		
	}
	
	//ִ��sql���
	public static PreparedStatement prepare(Connection conn, String sql){
		
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ps;
		
	}
	
	//�ر�conn
	public static void close(Connection conn){
		
		try {
			conn.close();
			//����Ϊnull��java��������վ���϶�����л��գ�ʹ����ռ���ڴ档
			conn = null;
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		
	}
	
	//�ر�stmt
	public static void close(PreparedStatement stmt){
		
		try {
			stmt.close();
			stmt = null;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	//�ر�rs
	public static void close(ResultSet rs){
		
		try {
			rs.close();
			rs = null;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
