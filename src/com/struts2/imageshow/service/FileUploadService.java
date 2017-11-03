package com.struts2.imageshow.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

import com.carry.entity.Information;

import com.struts2.imageshow.util.DB;

public class FileUploadService {

	
	public boolean fileUpload(int category_id,int user_id,File file,String text,java.sql.Timestamp time,String address,int demandnumber,String sport_detail) {
		
		FileInputStream in = null;
		
		Connection conn = DB.createConn();
		String sql = "insert into information(category_id,user_id,picture,text,time,address,demandnumber,sport_detail) values(?,?,?,?,?,?,?,?)";
		System.out.println(time+"时间");
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			
			in = new FileInputStream(file);
			
			if(conn == null)
			{
				System.out.println("连接为null");
				return false;
			}
		
			//ps.setInt(1, 4);
			ps.setInt(1,  category_id);
			ps.setInt(2, user_id);
			ps.setBinaryStream(3, in, in.available());
			ps.setString(4, text);
			ps.setTimestamp(5, time);
			ps.setString(6, address);
			ps.setInt(7, demandnumber);
			ps.setString(8, sport_detail);
			System.out.println(sql);
			if(ps.executeUpdate() > 0)
			{
				System.out.println("连接为nu");
				return true;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			System.out.println("连接为nul");
		} 
		DB.close(ps);
		DB.close(conn);
		return false;
		
	}

	

	public InputStream getPicById(int id){
		
		InputStream is = null;
		
		Connection conn = DB.createConn();
		String sql = "select picture from information where id = ?";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				is = rs.getBinaryStream("picture");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		return is;
		
	}
	
}
