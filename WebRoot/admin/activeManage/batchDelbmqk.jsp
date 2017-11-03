<%@ page language="java" import="java.util.*,com.carry.operate.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'batchDelqxtx.jsp' starting page</title>
    
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
   String ids[] =  request.getParameterValues("arr"); 
    System.out.print(ids);
    
  /* 所有的checkBox值都在IDs[0]中放着 */
   String[] strarr = ids[0].split(",");
   
    int[] ia = new int[strarr.length];
   for(int i=0;i<strarr.length;i++)
   {
   ia[i]=Integer.parseInt(strarr[i]);
   }
   info_operate operate=new info_operate();
   operate.batchDelqxtx(ia);
   response.sendRedirect("../activeManage/bmqk.jsp");
   %>
  </body>
</html>
