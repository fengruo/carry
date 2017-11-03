package com.carry.action;

import java.util.List;

import com.carry.entity.News;
import com.carry.operate.News_operation;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class GetNews extends ActionSupport implements ModelDriven<News>
{
  
	@Override
	public News getModel() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		News_operation news_operation=new News_operation();
		List <News>list=news_operation.getNewsOne();
		List <News>list2=news_operation.getNewsTwo();
		List <News>list3=news_operation.getNewsThree();
		List <News>list4=news_operation.getNewsFour();
		System.out.println(list);
		ActionContext.getContext().put("list", list);  
		ActionContext.getContext().put("list2", list2); 
		ActionContext.getContext().put("list3", list3); 
		ActionContext.getContext().put("list4", list4); 
		return SUCCESS;
	}
	
	
	//得到所有的新闻
		public String adminGetAllNews()
		{
		News_operation news_operation=new News_operation();
		List <News>list=news_operation.getAllNews();
		ActionContext.getContext().put("list", list);  
			return SUCCESS;
		}
	}


