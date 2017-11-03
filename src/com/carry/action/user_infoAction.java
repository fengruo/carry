package com.carry.action;

import java.util.List;

import javax.jms.Session;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.carry.entity.User;
import com.carry.operate.user_operate;
public class user_infoAction extends ActionSupport {
	
	private String studentnum;
	//用户信息查询
	public String execute(){
		// TODO Auto-generated method stub
		user_operate us=new user_operate();
		List<User> userinfo=us.user_quary(studentnum);
		ActionContext cxt = ActionContext.getContext();
		cxt.put("list", userinfo);
		return SUCCESS;
	}
	public String getStudentnum() {
		return studentnum;
	}
	public void setStudentnum(String studentnum) {
		this.studentnum = studentnum;
	}
	
	
}
