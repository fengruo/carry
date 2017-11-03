package com.struts2.admin;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.carry.entity.Admin;
import com.opensymphony.xwork2.ActionSupport;
import com.struts2.admin.service.AdminService;

public class SelectAdminAction extends ActionSupport {
	
	private AdminService adminService = new AdminService();
	
	public String execute() throws Exception {
		Admin admin = adminService.findAll();
		
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("admin",admin);
		
		System.out.println(admin);
		return SUCCESS;
	}
	
	
}
