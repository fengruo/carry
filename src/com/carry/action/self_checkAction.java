package com.carry.action;

import java.util.List;

import com.carry.entity.Information;
import com.carry.operate.info_operate;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class self_checkAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	private String check_userid;
	public String execute() {
		// TODO Auto-generated method stub
		
		System.out.println(check_userid);
		info_operate info_op =new info_operate();
		List<Information> list=info_op.info_quary(check_userid);
	//	System.out.println(list.get(1));
		ActionContext cxt = ActionContext.getContext();
		cxt.put("list", list);
		return SUCCESS;
	}
	public String getCheck_userid() {
		return check_userid;
	}
	public void setCheck_userid(String check_userid) {
		this.check_userid = check_userid;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
