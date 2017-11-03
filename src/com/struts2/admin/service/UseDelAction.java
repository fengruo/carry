package com.struts2.admin.service;

import com.carry.operate.user_operate;
import com.opensymphony.xwork2.ActionSupport;

public class UseDelAction extends ActionSupport {
	private String id;
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		 user_operate users=new user_operate(); 
		 users.user_del(id);
		return SUCCESS;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
}
