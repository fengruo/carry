<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
 
    <title>携动人生</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	   <link rel="stylesheet" href="../css/frame.css"/>
	<style type="text/css">
	.div1 .dltable .dd1:hover{
      background-color: #FF7A4D;
      }
	</style>

  </head>
  
  <body id="frame_nei" style="background:transparent;">
    <div class="div1">
    <dl class="dltable">
   
   
     	<dd class="dd1"><a class="a1"  target="mainframe" href="fileUploadPage.action">发布信息</a></dd>
     	
     	<dd class="dd1"><a class="a1"  target="mainframe" href="getUserUpAll.action?user_id=<%=session.getAttribute("userid").toString() %>">发布记录</a></dd>
     	<dd class="dd1"><a class="a1"  target="mainframe" href="self_check.action?check_userid=<%=session.getAttribute("userid").toString() %>">我响应的</a></dd>
     	<dd class="dd1"><a class="a1"  target="mainframe" href="oter_check.action?up_userid=<%=session.getAttribute("userid").toString() %>">响应我的</a></dd>
 
    	<dd class="dd1"><a class="a1"  target="mainframe" href="user_account.action?studentnum=<%=session.getAttribute("studentnum").toString() %>">修改账户信息</a></dd>
    	<dd class="dd1"><a class="a1"  target="mainframe" href="password_re.jsp">重置密码</a></dd>
    </dl>
    </div>
  
  </body>
</html>
