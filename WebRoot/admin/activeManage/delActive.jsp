<%@page import="com.carry.operate.info_operate"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delActive.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
      <% 
     String sd= request.getParameter("id");
     int id=Integer.parseInt(sd);
     String category_id=request.getParameter("categotyId");
     int category=Integer.parseInt(category_id);
     info_operate operate=new info_operate();
     operate.delActiveById(id);
     System.out.print(category_id);
      if(category==1)
      {
       response.sendRedirect("../activeManage/qxtx.jsp");    
      }
      if(category==2)
      {
       response.sendRedirect("../activeManage/bmqk.jsp");    
      }
       if(category==3)
      {
       response.sendRedirect("../activeManage/qqzz.jsp");    
      }
       if(category==4)
      {
       response.sendRedirect("../activeManage/yzxt.jsp");    
      }
    %>
  </body>
</html>
