package com.carry.action;

import com.carry.entity.News;
import com.carry.operate.News_operation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class InsertNews extends ActionSupport  implements ModelDriven<News>
{
	private News news= new News();
	public News getNews() {
		return news;
	}
	public void setNews(News news) {
		this.news = news;
	}
	@Override
	public News getModel() {
		// TODO Auto-generated method stub
		return news;
	}
	@Override
	public String execute() throws Exception 
	{
		// TODO Auto-generated method stub
		News_operation news_operation= new News_operation();
		news_operation.ins_News(news.getTitle(),news.getContent(), news.getTime(), news.getAuthor(), news.getCategoryId(),news.getPublisher());
		return SUCCESS;
	}

}
