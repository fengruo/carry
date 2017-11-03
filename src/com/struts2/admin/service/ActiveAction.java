package com.struts2.admin.service;

import java.util.List;

import com.carry.entity.Information;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.struts2.admin.dao.AdminInfo;

public class ActiveAction extends ActionSupport {
	private int id;
	
	
	public String execute() throws Exception {
		System.out.println(id+1);
		AdminInfo ad_id=new AdminInfo();
		List<Information> list =ad_id.findAll(id);;
		ActionContext cxt = ActionContext.getContext();
		cxt.put("list", list);
		
		if(id==1){
			return "success_qxtx";
		}else if(id==2){
			return "success_bmqk";
		}else if(id==3){
			return "success_qqzz";
		}else if(id==4){
			return "success_yzxt";
		}else{
			return ERROR;
		}
		
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	


	
	
}
