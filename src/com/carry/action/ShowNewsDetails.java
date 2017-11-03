package com.carry.action;

import java.util.List;

import com.carry.entity.News;
import com.carry.operate.News_operation;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sun.org.apache.bcel.internal.generic.NEW;

public class ShowNewsDetails extends ActionSupport implements ModelDriven<News> {

	News news= new News();
	@Override
	public News getModel() {
		// TODO Auto-generated method stub
		return null;
	}
   @Override
public String execute() throws Exception {
	// TODO Auto-generated method stub
	News_operation details= new News_operation ();
	List <News> list=details.getNewsDetails(news.getId());
	ActionContext.getContext().put("list", list);  
	return SUCCESS;
}
}
