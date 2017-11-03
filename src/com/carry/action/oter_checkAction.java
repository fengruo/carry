package com.carry.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.carry.entity.Information;
import com.carry.entity.User;
import com.carry.entity.checkinfo;
import com.carry.operate.info_operate;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.struts2.imageshow.service.getUserUpAll;
import com.struts2.imageshow.util.DB;

public class oter_checkAction extends ActionSupport {
	private String up_userid;
	public List<Information> getUserUpAll() {
		// TODO Auto-generated constructor stub
		Information pic = null;
		//System.out.println("11111111111111111111111111111111"+userid);
			List<Information> list = new ArrayList<Information>();
			Connection conn = DB.createConn();
			String sql = "select information.id,information.state,information.time,information.address,information.text,";
			sql=sql+"information.demandnumber,information.checknumber,categorytwo.sport_name,";
			sql=sql+"user.name,user.phone from information,categorytwo,user where ";
			sql=sql+" information.user_id = "+up_userid+" ";
			sql=sql+" and categorytwo.id=information.category_id and user.id=information.user_id";
			//System.out.println(sql);
			PreparedStatement ps = DB.prepare(conn, sql);
			System.out.println(up_userid);
			try {
				ResultSet rs = ps.executeQuery();
				while(rs.next())
				{
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
		System.out.println(up_userid);
		info_operate info_op =new info_operate();
		List<User> list=info_op.getcheckinfo(up_userid);
	//	System.out.println(list.get(1));
		ActionContext cxt = ActionContext.getContext();
		cxt.put("user", list);
		
		List<Information> list1 =getUserUpAll();
		ActionContext cxt1 = ActionContext.getContext();
		cxt1.put("list", list1);
		

		List<checkinfo> list2 =info_op.getcheckall(up_userid);
		ActionContext cxt2 = ActionContext.getContext();
		cxt2.put("checkinfo", list2);
		return SUCCESS;
	}
	public String getUp_userid() {
		return up_userid;
	}
	public void setUp_userid(String up_userid) {
		this.up_userid = up_userid;
	}
	
}
