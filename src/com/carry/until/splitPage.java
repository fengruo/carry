package com.carry.until;
import java.sql.*;
import java.util.*;
public class splitPage
{
	//������ݿ����Ӷ���ͽ�����
	private Connection con=null;
	private Statement stmt=null;
	private ResultSet rs=null;
	private ResultSetMetaData rsmd=null;
	//SQL��ѯ���
	private String sqlStr;
	//�ܼ�¼��Ŀ
	private int rowCount=0;
	//��ֵ��߼�ҳ��
	private int pageCount=0;
	//ÿҳ��ʾ�ļ�¼��Ŀ
	private int pageSize=0;	
	//���ò���ֵ
	public void setCon(Connection con)
	{
		this.con=con;
		if (this.con == null)
		{
			System.out.println("Failure to get a connection!");
		}
		else
		{
			System.out.println("Success to get a connection!");
		}
	}	
	//��ʼ��,��ȡ��ݱ��е���Ϣ
	public void initialize(String sqlStr,int pageSize,int ipage)
	{		
		int irows = pageSize*(ipage-1);
		this.sqlStr=sqlStr;
		this.pageSize=pageSize;
		try
		{ 
			stmt=this.con.createStatement(); 
			rs=stmt.executeQuery(this.sqlStr);		
			if (rs!=null)
			{
				rs.last();
				this.rowCount = rs.getRow();
				rs.first();
				this.pageCount = (this.rowCount - 1) / this.pageSize + 1; 
			} 
			this.sqlStr=sqlStr+" limit "+irows+","+pageSize;
			stmt=this.con.createStatement(); 
			rs=stmt.executeQuery(this.sqlStr); 
			rsmd=rs.getMetaData(); 
			
		} 
		catch(SQLException e)
		{
			System.out.println(e.toString()); 
		} 
	}	
	//����ʾ���浽Vector��������
	public Vector getPage()
	{ 
		Vector vData=new Vector();
		try
		{
			if (rs!=null)
			{
				while(rs.next())
				{
					String[] sData=new String[12];
					for(int j=0;j<rsmd.getColumnCount();j++)
					{
						sData[j]=rs.getString(j+1);
					}
					vData.addElement(sData);									
				}			
			} 
			rs.close(); 
			stmt.close(); 
		} 
		catch(SQLException e)
		{
			System.out.println(e.toString());
		} 
		
		return vData; 
	} 	
	//���ҳ������
	public int getPageCount()
	{
		return this.pageCount;
	}	
	//��ȡ��ݱ��м�¼����
	public int getRowCount()
	{
		return this.rowCount;
	}
}

