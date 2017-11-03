package com.struts2.imageshow.action;

import java.io.File;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.omg.CORBA.Request;

import com.carry.entity.Information;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import com.struts2.imageshow.service.FileUploadService;
import com.struts2.imageshow.service.getAll;
import com.sun.org.apache.bcel.internal.generic.NEW;


public class FileUploadAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String category_id;
	private String user_id;
	private File file;
	private  String  time;
	private String text;
	private String address;
	private int demandnumber;
	private String sport_detail;
	public String execute(){
		  
        SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");  
        java.util.Date du = null;
		try {
			du = sp.parse(time);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
            java.sql.Timestamp time1 = new java.sql.Timestamp(du.getTime());
		System.out.println(time1+"...........time");
		FileUploadService fuService=new FileUploadService();
		getAll fuService1 = new getAll();
		if(fuService.fileUpload(Integer.parseInt(category_id),Integer.parseInt(user_id),file,text,time1,address,demandnumber,sport_detail))
		{
			List<Information> list = fuService1.findAll();
			ActionContext cxt = ActionContext.getContext();
			cxt.put("list", list);
			return SUCCESS;
		}
		else
		{
			super.addActionError(this.getText("fileupload.fail"));
			return INPUT;
		}
		
	}
	
	
	
	


	public String getSport_detail() {
		return sport_detail;
	}






	public void setSport_detail(String sport_detail) {
		this.sport_detail = sport_detail;
	}






	public String getCategory_id() {
		return category_id;
	}


	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}


	

	public String getTime() {
		return time;
	}






	public void setTime(String time) {
		this.time = time;
	}






	public String getText() {
		return text;
	}


	public void setText(String text) {
		this.text = text;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	




	public int getDemandnumber() {
		return demandnumber;
	}


	public void setDemandnumber(int demandnumber) {
		this.demandnumber = demandnumber;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
