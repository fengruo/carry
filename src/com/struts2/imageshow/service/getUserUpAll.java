package com.struts2.imageshow.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.carry.entity.Information;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.struts2.imageshow.util.DB;

public class getUserUpAll extends ActionSupport {
	
	private String user_id;
	public List<Information> getUserUpAll() {
		// TODO Auto-generated constructor stub
		Information pic = null;
		//System.out.println("11111111111111111111111111111111"+userid);
			List<Information> list = new ArrayList<Information>();
			Connection conn = DB.createConn();
			String sql = "select information.id,information.state,information.time,information.address,information.text,";
			sql=sql+"information.demandnumber,information.checknumber,categorytwo.sport_name,";
			sql=sql+"user.name,user.phone from information,categorytwo,user where ";
			sql=sql+" information.user_id = "+user_id+" ";
			sql=sql+" and categorytwo.id=information.category_id and user.id=information.user_id";
			//System.out.println(sql);
			PreparedStatement ps = DB.prepare(conn, sql);
			
			try {
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
					System.out.println(rs.getTimestamp("time"));
					pic = new Information();
					pic.setDemandnumber(rs.getInt("demandnumber"));
					pic.setChecknumber(rs.getInt("checknumber"));
					pic.setState(rs.getInt("state"));
					pic.setTime(rs.getTimestamp("time"));
					if(rs.getString("sport_name").equals("ÆäËû")){
						pic.setSport_name(rs.getString("text"));
					}else{
						pic.setSport_name(rs.getString("sport_name"));
					}
					pic.setPhone(rs.getString("phone"));
					pic.setName(rs.getString("name"));
					pic.setAddress(rs.getString("address"));
					pic.setId(rs.getInt("id"));
					list.add(pic);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			DB.close(ps);
			DB.close(conn);
			return list;	
		}
	
	
	public String execute()  {
		// TODO Auto-generated method stub
		List<Information> list =getUserUpAll();
		ActionContext cxt = ActionContext.getContext();
		cxt.put("list", list);
		return SUCCESS;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	

	
	
}
