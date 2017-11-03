package com.struts2.imageshow.action;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.struts2.imageshow.service.FileUploadService;

public class FileShowAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void show() {
		// TODO Auto-generated method stub
		HttpServletRequest request = ServletActionContext.getRequest();
		int id = Integer.parseInt(request.getParameter("id"));
		FileUploadService service = new FileUploadService();
		InputStream in = service.getPicById(id);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("image/gif");
		try {
			int size = in.available();
			byte[] image = new byte[size];
			in.read(image);
			ServletOutputStream out = response.getOutputStream();
			out.write(image);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public String execute(){
		return SUCCESS;	
	}
	
}
