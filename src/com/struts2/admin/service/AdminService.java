package com.struts2.admin.service;

import java.sql.SQLException;

import com.carry.entity.Admin;
import com.struts2.admin.dao.AdminInfo;

public class AdminService {

	private AdminInfo adminInfo = new AdminInfo();
	
	public Admin findAll() throws SQLException{
		return adminInfo.findAll();
	}
	
	
}
