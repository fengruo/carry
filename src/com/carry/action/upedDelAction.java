package com.carry.action;


import java.io.File;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.omg.CORBA.Request;

import com.carry.entity.Information;
import com.carry.operate.user_operate;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import com.struts2.imageshow.service.FileUploadService;
import com.struts2.imageshow.service.getAll;
import com.sun.org.apache.bcel.internal.generic.NEW;


public class upedDelAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String id;
	private String studentnum;
	private String user_id;
	
	public String execute(){
		
		System.out.println(id+"id");
		System.out.println(studentnum+"studentnum");
		System.out.println(user_id+"user_id");
		user_operate us=new user_operate();
		us.user_updel(id);
		
		
			return SUCCESS;
		
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStudentnum() {
		return studentnum;
	}

	public void setStudentnum(String studentnum) {
		this.studentnum = studentnum;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	

}

