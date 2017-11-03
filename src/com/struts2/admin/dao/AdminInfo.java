package com.struts2.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.carry.entity.Admin;
import com.carry.entity.Information;
import com.carry.until.DataBase;
import com.struts2.imageshow.util.DB;


public class AdminInfo extends DataBase{
	
	public String user_quarypwd(String account) {
		String pwd="";
		sqlStr="select password from admin where account='"+account+"'";
		try {
			rs= stmt.executeQuery(sqlStr);
			while(rs.next()){
				pwd=rs.getString("password");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pwd;
	}
	
	
	//¸ù¾Ýid
public List<Information> findAll(int id) {
		
		Information pic = null;
		List<Information> list = new ArrayList<Information>();
		Connection conn = DB.createConn();
		String sql = "select information.id,information.state,information.time,information.address,information.text,";
		sql=sql+"information.demandnumber,information.checknumber,categorytwo.sport_name,";
		sql=sql+"user.name,user.id,user.phone from information,categorytwo,user where ";
		sql=sql+"information.category_id in (select id from categorytwo where category_id = "+id+") ";
		sql=sql+"and categorytwo.id=information.category_id and user.id=information.user_id";
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				
				pic = new Information();
				pic.setUser_id(rs.getInt("user.id"));
				pic.setDemandnumber(rs.getInt("demandnumber"));
				pic.setChecknumber(rs.getInt("checknumber"));
				pic.setState(rs.getInt("state"));
				pic.setTime(rs.getTimestamp("time"));
				pic.setText(rs.getString("text"));
				pic.setSport_name(rs.getString("sport_name"));
				pic.setPhone(rs.getString("phone"));
				pic.setName(rs.getString("name"));
				pic.setAddress(rs.getString("address"));
				pic.setId(rs.getInt("information.id"));
				pic.setPageid(id);
				list.add(pic);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		System.out.println(id+"99999999999999999999");
		return list;	
	}
	public Admin findAll() throws SQLException {
		Connection conn = DB.createConn();
		String sql = "select * from admin";
		PreparedStatement statement = DB.prepare(conn, sql);
		ResultSet resultSet = statement.executeQuery();
		while(resultSet.next()) {
			int id = resultSet.getInt(1);
			String account = resultSet.getString(2);
			String password = resultSet.getString(3);
			Admin admin = new Admin();
			admin.setId(id);
			admin.setAccount(account);
			admin.setPassword(password);
			return admin;
		}
		return null;
	}
	
	
}
