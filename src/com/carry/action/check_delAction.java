package com.carry.action;

import com.carry.operate.info_operate;
import com.opensymphony.xwork2.ActionSupport;

public class check_delAction extends ActionSupport {
	private String check_userid;
	private String info_id;
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		info_operate in_op=new info_operate();
		in_op.check_del(info_id, check_userid);
		return SUCCESS;
	}
	public String getCheck_userid() {
		return check_userid;
	}
	public void setCheck_userid(String check_userid) {
		this.check_userid = check_userid;
	}
	public String getInfo_id() {
		return info_id;
	}
	public void setInfo_id(String info_id) {
		this.info_id = info_id;
	}
	
}	
