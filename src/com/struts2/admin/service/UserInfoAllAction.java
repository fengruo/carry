package com.struts2.admin.service;

import java.util.List;

import com.carry.entity.Information;
import com.carry.entity.User;
import com.carry.operate.user_operate;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserInfoAllAction extends ActionSupport {
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		 user_operate users=new user_operate(); 
		    List<User> list=users.getAllUser();
		   
			ActionContext cxt = ActionContext.getContext();
			cxt.put("list", list);
			
		return SUCCESS;
	}
}
