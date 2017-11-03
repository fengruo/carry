package com.carry.action;

import com.carry.operate.News_operation;
import com.opensymphony.xwork2.ActionSupport;

public class Del_News extends ActionSupport 
{
	private int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	@Override
	public String execute() throws Exception {
		System.out.println(id);
		News_operation news_operation= new  News_operation();
		news_operation.del_News(id);
		return SUCCESS;
	}

}
