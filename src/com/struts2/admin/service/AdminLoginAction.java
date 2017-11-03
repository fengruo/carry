package com.struts2.admin.service;

import com.opensymphony.xwork2.ActionSupport;
import com.struts2.admin.dao.AdminInfo;

public class AdminLoginAction extends ActionSupport {
	
	private String account;
	private String password;
	public String execute()  {
		// TODO Auto-generated method stub
		String pwd="";
		AdminInfo ad_in=new AdminInfo();
		pwd=ad_in.user_quarypwd(account);
		System.out.println(pwd);
		if(pwd.length()<=0){
			return INPUT;
		}else if(password.equals(pwd)||pwd==password){
		return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
