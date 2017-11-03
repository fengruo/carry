package com.carry.action;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.opensymphony.xwork2.ActionSupport;
import com.struts2.imageshow.util.DB;
import com.carry.operate.user_operate;
import com.carry.until.*;


public class useraccount_revise extends ActionSupport  {
	private String  studentnum;
	private String name;
	private String  qq;
	private String email;
	private String   phone;
	private String school;
	@Override
	public String execute()  {
		// TODO Auto-generated method stub
		//System.out.println(school);
		user_operate us=new user_operate();
		us.user_update(studentnum, name, qq, phone, email, school);
			return SUCCESS;
			}
	
	
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getStudentnum() {
		return studentnum;
	}
	public void setStudentnum(String studentnum) {
		this.studentnum = studentnum;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	
	
	
}
