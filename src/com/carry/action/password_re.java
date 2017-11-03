package com.carry.action;

import java.util.*;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.carry.entity.User;
import com.carry.operate.user_operate;
public class password_re extends ActionSupport {
	
	private String studentnum;
	private String old_pwd;
	private String new_pwd;
	public void prepare() throws Exception
	{
	  // Clear last error messages
	  clearErrorsAndMessages();
	}
	
	public String execute(){
		// TODO Auto-generated method stub
		System.out.println(studentnum+"Ñ§ºÅ");
		user_operate us=new user_operate();
		System.out.println(us.user_quarypwd(studentnum));
		if(us.user_quarypwd(studentnum).equals(old_pwd)){
			us.user_updatepwd(studentnum, new_pwd);
			return SUCCESS;
		}else{
			return INPUT;
		}

		
	}

	public String getStudentnum() {
		return studentnum;
	}

	public void setStudentnum(String studentnum) {
		this.studentnum = studentnum;
	}

	public String getOld_pwd() {
		return old_pwd;
	}

	public void setOld_pwd(String old_pwd) {
		this.old_pwd = old_pwd;
	}

	public String getNew_pwd() {
		return new_pwd;
	}

	public void setNew_pwd(String new_pwd) {
		this.new_pwd = new_pwd;
	}
	
	
}

	
		