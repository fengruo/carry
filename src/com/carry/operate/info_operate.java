package com.carry.operate;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.carry.entity.Information;
import com.carry.entity.User;
import com.carry.entity.checkinfo;
import com.carry.until.DataBase;
import com.struts2.imageshow.service.getUserUpAll;
import com.struts2.imageshow.util.DB;

public class info_operate extends DataBase{
	//查询信息表

	//根据响应用户id和信息id删除响应信息表中记录
	public void check_del(String info_id,String check_userid){
		boolean a=false;
		String sql ="delete from checkinfo where check_userid="+Integer.parseInt(check_userid)+" and info_id="+Integer.parseInt(info_id);
		System.out.println(sql);
			
			try {
			a=	stmt.execute(sql);
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	//根据信息响应者id，查询用户响应信息详细内容
	public List<Information> info_quary(String check_userid){
		Information pic = null;
		List<Information> list = new ArrayList<Information>();
		String sql = "select information.id,information.state,information.time,information.address,information.text,";
		sql=sql+"information.demandnumber,information.checknumber,categorytwo.sport_name,";
		sql=sql+"user.name,user.id,user.phone from information,categorytwo,user where ";
		sql=sql+"information.id in (select info_id from checkinfo where check_userid="+Integer.parseInt(check_userid)+")";
		sql=sql+"and categorytwo.id=information.category_id and user.id=information.user_id";
		sqlStr=sql;
		try {
			
			rs=stmt.executeQuery(sqlStr);
			while(rs.next()){
				pic = new Information();
				pic.setUser_id(rs.getInt("user.id"));
				pic.setDemandnumber(rs.getInt("demandnumber"));
				pic.setChecknumber(rs.getInt("checknumber"));
				pic.setState(rs.getInt("state"));
				pic.setTime(rs.getTimestamp("time"));
				if(rs.getString("sport_name").equals("其他")){
					pic.setSport_name(rs.getString("text"));
				}else{
					pic.setSport_name(rs.getString("sport_name"));
				}
				pic.setPhone(rs.getString("phone"));
				pic.setName(rs.getString("name"));
				pic.setAddress(rs.getString("address"));
				pic.setId(rs.getInt("information.id"));
				list.add(pic);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	//根据信息id是否在当前分类中查询响应表所有信息
	public List<checkinfo> getcheckall(int id) {
		// TODO Auto-generated method stub
		List<checkinfo> ch_info=new ArrayList<checkinfo>();
		String sql = "select * from checkinfo where info_id in (select id from information where category_id in(select id from categorytwo where category_id = "+id+")) ";;
		System.out.println(sql);
		try {
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				checkinfo ck=new checkinfo();
				ck.setId(rs.getInt("id"));
				ck.setInfo_id(rs.getInt("info_id"));
				ck.setCheck_userid(rs.getInt("check_userid"));
				ck.setUp_userid(rs.getInt("up_userid"));
				ch_info.add(ck);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return ch_info;
	}
	//根据发布者id查询响应表中发布者信息记录
	public List<checkinfo> getcheckall(String up_userid) {
		// TODO Auto-generated method stub
		List<checkinfo> ch_info=new ArrayList<checkinfo>();
		String sql = "select * from checkinfo where up_userid="+Integer.parseInt(up_userid);
		System.out.println(sql);
		try {
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				checkinfo ck=new checkinfo();
				ck.setId(rs.getInt("id"));
				ck.setInfo_id(rs.getInt("info_id"));
				ck.setCheck_userid(rs.getInt("check_userid"));
				ck.setUp_userid(rs.getInt("up_userid"));
				ch_info.add(ck);
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return ch_info;
	}
	
	//根据响应用户id，是否在发布信息用户信息中，查询信息
	public List<User> getcheckinfo(String up_userid) {
		// TODO Auto-generated method stub
		System.out.println(up_userid+"sql方法");
		List<User> userlist=new ArrayList<User>();
		sqlStr = "select * from user where id in (select check_userid from checkinfo where up_userid ="+Integer.parseInt(up_userid)+")";
		System.out.println(sqlStr+"sql方法");
		try {
			rs=stmt.executeQuery(sqlStr);
			while(rs.next()){
				System.out.println(rs.getString("Studentnum"));
				User user=new User();
				user.setId(rs.getInt("id"));
				user.setStudentnum(rs.getString("Studentnum"));
				user.setQq(rs.getString("qq"));
				user.setName(rs.getString("name"));
				user.setPassword(rs.getString("password"));
				user.setSex(rs.getString("sex"));
				user.setPhone(rs.getString("phone"));
				user.setEmail(rs.getString("email"));
				user.setSchool(rs.getString("school"));
				userlist.add(user);
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return userlist;
	}
	
	//批量删除棋行天下活动
	 public void batchDelqxtx(int []sql)
	   {
		   try {
			   for (int i = 0;i < sql.length;i ++)
		        {
				    
		            sqlStr = "delete from information  where id="+ sql[i] ;
		            System.out.println(sqlStr);
		            stmt.execute(sqlStr);
		            conn.close();
		        }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   }
	 
	//根据id删除活动信息
	public void delActiveById(int id)
	{
		sqlStr="delete from information where id="+id;
		try {
			stmt.execute(sqlStr);
			stmt.close();
			conn.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
