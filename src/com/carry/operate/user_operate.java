package com.carry.operate;



import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import com.carry.entity.User;
import com.carry.until.DBConnectionManager;
import com.carry.until.DataBase;

public class user_operate extends DataBase {
	//ɾ��ָ���û�
	public void user_del(String id){
		boolean state=false;
		sqlStr="delete from user where id="+Integer.parseInt(id);
		try {
			state=stmt.execute(sqlStr);
			
				
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	//��ȡ�����û���Ϣ
	public List<User> getAllUser()
	{
		
		String sql="select * from user";
		try {
			 List<User> list = new ArrayList<User>();
			   rs =   stmt.executeQuery(sql);
			  while(rs.next())
			  {
                User user  = new User();
				user.setId(rs.getInt("id"));
				/*System.out.println("22222222222222222222222222222222222");
				System.out.println(rs.getString("name"));
				System.out.println(rs.getInt("id"));
				System.out.println(rs.getString("email"));
				System.out.println(rs.getString("phone"));
				System.out.println(rs.getString("studentnum"));
				System.out.println(rs.getString("QQ"));
				System.out.println(rs.getString("school"));
				System.out.println(rs.getInt("id"));
				System.out.println(rs.getInt("id"));*/
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setSex(rs.getString("sex"));
				user.setStudentnum(rs.getString("studentnum"));
				user.setQq(rs.getString("QQ"));
				user.setSchool(rs.getString("school"));
				list.add(user);
			  }
			 
			return list;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}

	
	
	//�����Ӧ��¼
	public boolean check_insert(String info_id,String check_userid,String up_userid){
		// TODO Auto-generated method stub
		boolean state=false;
		sqlStr="insert into checkinfo set info_id="+Integer.parseInt(info_id)+",check_userid="+Integer.parseInt(check_userid)+",up_userid="+Integer.parseInt(up_userid);
		try {
			state=stmt.execute(sqlStr);
			
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return state;
	}
	
	//ɾ����Ϣ
	public Boolean user_updel(String id) {
		Boolean bu=false;
		sqlStr="delete from information where id="+Integer.parseInt(id);
		try {
			bu=stmt.execute(sqlStr);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bu;
	}
	//�޸�����
	public int user_updatepwd(String studentnum,String new_pwd) {
		int state=0;
		sqlStr="update  user set password ='"+new_pwd+"' where studentnum='"+studentnum+"'";
		try {
			state= stmt.executeUpdate(sqlStr);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return state;
	}
	//ȡ������
	public String user_quarypwd(String studentnum) {
		String pwd="";
		sqlStr="select password from user where studentnum="+studentnum;
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
	//����û�id��ѯ�û���Ϣ
	public Vector user_quary(String studentnum) {
		// TODO Auto-generated method stub
		sqlStr="select * from user where studentnum="+studentnum;
		Vector userinfo=new Vector();
		try {
			rs= stmt.executeQuery(sqlStr);
			while(rs.next()){
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
			userinfo.addElement(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return userinfo;
	}
	//�����û���Ϣ��ע�ᣩ
	public int user_insert(String studentnum,String name,String password,String sex,String qq,String phone,String email,String school) {
		// TODO Auto-generated method stub
		int state=0;
		String usernum="";
		sqlStr="insert into user values(null,'"+studentnum+"','"+name;
		sqlStr=sqlStr+"','"+password+"','"+sex+"','"+qq+"','"+phone;
		sqlStr=sqlStr+"','"+email+"','"+school+"')";
		String sql="select studentnum from user where studentnum="+studentnum;
		try {
			rs=stmt.executeQuery(sql);
			while(rs.next()){
				usernum=rs.getString("Studentnum");		
			}
			if(usernum==""||usernum.equals(null)){
				
				state=stmt.executeUpdate(sqlStr);
			}else{
				System.out.println(usernum);
				
				return state;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return state;
	}
	public int user_update(String studentnum,String name,String qq,String phone,String email,String school) {
		// TODO Auto-generated method stub
		int state=0;
		String sql ="update  user set name='"+name+"',qq='"+qq+"',email='"+email+"',phone='"+phone+"',school='"+school+"' where studentnum='"+studentnum+"'";
		try {
			state=stmt.executeUpdate(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return state;
	}
	
	 //批量删除用户信息
	   public void batchDelUser(int []sql)
	   {
		   try {
			   for (int i = 0;i < sql.length;i ++)
		        {
				    System.out.println("222222222222222");
		            sqlStr = "delete from user where id="+ sql[i] ;
		            System.out.println(sqlStr);
		            stmt.execute(sqlStr);
		        }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   }
	 //根据ID删除用户信息
	   public void del_User(int id)
	   {
		   sqlStr="DELETE FROM user WHERE id="+id;
		   try {
			stmt.execute(sqlStr);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   }
}
