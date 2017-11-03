package com.struts2.imageshow.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.carry.entity.Information;
import com.carry.entity.checkinfo;
import com.carry.operate.info_operate;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.struts2.imageshow.util.DB;

public class getAll_two extends ActionSupport {
	private int category_id;
	public int findpageid() {
		// TODO Auto-generated method stub
		int id=0;
		String sql = "select category_id from categorytwo where id = "+category_id;
		Connection conn = DB.createConn();
		PreparedStatement ps = DB.prepare(conn, sql);
		try {
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			id=rs.getInt("category_id");
		}}catch (Exception e) {
			// TODO: handle exception
		}
		return id;
	}
	
	public List<Information> findAll() {
		
		Information pic = null;
		List<Information> list = new ArrayList<Information>();
		Connection conn = DB.createConn();
		String sql = "select information.id,information.state,information.time,information.address,information.text,";
		sql=sql+"information.demandnumber,information.checknumber,categorytwo.sport_name,";
		sql=sql+"user.name,user.id,user.phone from information,categorytwo,user where ";
		sql=sql+"information.category_id  = "+category_id+" ";
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
				if(rs.getString("sport_name").equals("ÆäËû")){
					pic.setSport_name(rs.getString("text"));
				}else{
					pic.setSport_name(rs.getString("sport_name"));
				}
				pic.setPhone(rs.getString("phone"));
				pic.setName(rs.getString("name"));
				pic.setAddress(rs.getString("address"));
				pic.setId(rs.getInt("information.id"));
				pic.setPageid(findpageid());
				list.add(pic);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DB.close(ps);
		DB.close(conn);
		System.out.println(category_id+"99999999999999999999");
		return list;	
	}
	public String execute(){
		List<Information> list =findAll();
		ActionContext cxt = ActionContext.getContext();
		cxt.put("list", list);
		info_operate info_op =new info_operate();
		List<checkinfo> check_info =info_op.getcheckall(findpageid() );
		ActionContext cxt1 = ActionContext.getContext();
		cxt1.put("check_info", check_info);
		return SUCCESS;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	
	
}
