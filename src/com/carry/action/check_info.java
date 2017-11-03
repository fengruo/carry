package com.carry.action;

import com.carry.operate.user_operate;
import com.opensymphony.xwork2.ActionSupport;

public class check_info extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String info_id;
	private String check_userid;
	private String up_userid;
	
	public String execute() {
		// TODO Auto-generated method stub
		System.out.println("ma   yong   ming  11111111111111  ");
		user_operate us=new user_operate();
		//us.check_insert(info_id, check_userid, up_userid);
		return SUCCESS;
	}
	public String getInfo_id() {
		return info_id;
	}
	public void setInfo_id(String info_id) {
		this.info_id = info_id;
	}
	public String getCheck_userid() {
		return check_userid;
	}
	public void setCheck_userid(String check_userid) {
		this.check_userid = check_userid;
	}
	public String getUp_userid() {
		return up_userid;
	}
	public void setUp_userid(String up_userid) {
		this.up_userid = up_userid;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
