package com.struts2.admin.service;

import com.carry.operate.user_operate;
import com.opensymphony.xwork2.ActionSupport;

public class InfoDelAction extends ActionSupport {
	private String id;
	private String info_id;
	public String execute()  {
		// TODO Auto-generated method stub
		user_operate us_op=new user_operate();
		us_op.user_updel(info_id);
		return SUCCESS;
	}
	public String getInfo_id() {
		return info_id;
	}
	public void setInfo_id(String infoId) {
		info_id = infoId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	
}
