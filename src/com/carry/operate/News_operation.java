package com.carry.operate;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.text.DefaultEditorKit.InsertBreakAction;

import com.carry.entity.News;
import com.carry.until.DataBase;

public class News_operation extends DataBase
{
  //根据分类ID查询所属类别的校园新闻
   public List<News> getNewsOne()
   {
	   List<News> list=new ArrayList<News>();
	   sqlStr="select  * from news where categoryId=1 order by time desc LIMIT 0 ,10";
	   try {
		rs=stmt.executeQuery(sqlStr);
		while(rs.next())
		{
			News news =new News();
			news.setId(rs.getInt("id"));
			news.setTitle(rs.getString("title"));
			news.setContent(rs.getString("content"));
			news.setTime(rs.getString("time"));
			news.setAuthor(rs.getString("author"));
			list.add(news);
		}
		return list;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return null;
   }
   //
   public List<News> getNewsTwo()
   {
	   List<News> list2=new ArrayList<News>();
	   sqlStr="select  * from news where categoryId=2 order by time desc LIMIT 0 ,10";
	   try {
		rs=stmt.executeQuery(sqlStr);
		while(rs.next())
		{
			News news =new News();
			news.setId(rs.getInt("id"));
			news.setTitle(rs.getString("title"));
			news.setContent(rs.getString("content"));
			news.setTime(rs.getString("time"));
			news.setAuthor(rs.getString("author"));
			list2.add(news);
		}
		return list2;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return null;
   }
   public List<News> getNewsThree()
   {
	   List<News> list3=new ArrayList<News>();
	   sqlStr="select  * from news where categoryId=3 order by time desc LIMIT 0 ,10;";
	   try {
		rs=stmt.executeQuery(sqlStr);
		while(rs.next())
		{
			News news =new News();
			news.setId(rs.getInt("id"));
			news.setTitle(rs.getString("title"));
			news.setContent(rs.getString("content"));
			news.setTime(rs.getString("time"));
			news.setAuthor(rs.getString("author"));
			list3.add(news);
		}
		return list3;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return null;
   }
   public List<News> getNewsFour()
   {
	   List<News> list4=new ArrayList<News>();
	   sqlStr="select  * from news where categoryId=4 order by time desc LIMIT 0 ,10;";
	   try {
		rs=stmt.executeQuery(sqlStr);
		while(rs.next())
		{
			News news =new News();
			news.setId(rs.getInt("id"));
			news.setTitle(rs.getString("title"));
			news.setContent(rs.getString("content"));
			news.setTime(rs.getString("time"));
			news.setAuthor(rs.getString("author"));
			list4.add(news);
		}
		return list4;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return null;
   }
   
   //根据ID获取详细信息
   public List<News> getNewsDetails(int id)
   {
	   List<News> list5=new ArrayList<News>();
	   sqlStr="select  * from news where id="+id;
	   try {
		rs=stmt.executeQuery(sqlStr);
		while(rs.next())
		{
			News news =new News();
			news.setId(rs.getInt("id"));
			news.setTitle(rs.getString("title"));
			news.setContent(rs.getString("content"));
			news.setTime(rs.getString("time"));
			news.setAuthor(rs.getString("author"));
			list5.add(news);
		}
		return list5;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return null;
   }
   
   //查询所有的新闻
   public List<News> getAllNews()
   {
	   List<News> list5=new ArrayList<News>();
	   sqlStr="select  * from news ";
	   try {
		rs=stmt.executeQuery(sqlStr);
		while(rs.next())
		{
			News news =new News();
			news.setId(rs.getInt("id"));
			news.setTitle(rs.getString("title"));
			news.setContent(rs.getString("content"));
			news.setTime(rs.getString("time"));
			news.setAuthor(rs.getString("author"));
			news.setCategoryId(rs.getInt("categoryId"));
			news.setPublisher(rs.getString("publisher"));
			list5.add(news);
		}
		return list5;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   return null;
   }
   
   //根据ID删除新闻信息
   public void del_News(int id)
   {
	   sqlStr="DELETE FROM news WHERE id="+id;
	   try {
		stmt.execute(sqlStr);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   }
   
   //插入新闻
   public void ins_News(String title,String content,String time ,String author,int categoryId,String publisher)
   {
	  sqlStr="INSERT into news (title ,content,time,author,categoryId,publisher)  VALUES ('"+title+"',"+"'"+content+"',"+"'"+time+"',"+"'"+author+"',"+categoryId+",'"+publisher+"')"; 
      System.out.println(sqlStr);
      try {
		stmt.execute(sqlStr);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   }
   
   //批量删除信息
   public void batchDelNews(int []sql)
   {
	   try {
		   for (int i = 0;i < sql.length;i ++)
	        {
			    System.out.println("222222222222222");
	            sqlStr = "delete from news where id="+ sql[i] ;
	            System.out.println(sqlStr);
	            stmt.execute(sqlStr);
	        }
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   }
}
