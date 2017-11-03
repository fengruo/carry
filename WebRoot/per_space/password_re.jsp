<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>携动人生</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script>

  function check()
  {
    if($("#new_pwd").val()==null||$("#new_pwd").val()=="")
    {
       alert("请输入新密码！");
       return false;
    }
     if($("#new_pwd").val()!=$("#new_pwd2").val())
    {
       alert("两次密码不一致！");
       return false;
    }
    if($("#new_pwd").val().length<6)
    { alert("请输入大于6位的密码！");
       return false;
    }
    else   return true; 
 }
 


 </script>
 
  </head>
  
  <body bgcolor="#79CEC7" style="align: center; ">
		<div style="padding-top: 30px; padding-left: 30px">
   
				
  
  <fieldset style="width: 600px; border-color: #000000; padding-left: 10px">
			
				<legend>
					<font size="-1" color="#000000"><b> 密码修改</b> </font>
				</legend>

<form action="password_re.action" method="post" onsubmit=" return check();" >
<table>
<tr><td><input type="hidden" value="<%=session.getAttribute("studentnum").toString()%>" name="studentnum"/></td></tr>
<br/>
<tr><td>原密码：</td><td><input type="text" name="old_pwd" value="" id="pwd"/>
</td></tr>
  <tr><td> 新密码：</td><td><input type="password" name="new_pwd" value="" id="new_pwd"/> </td></tr>
  <tr><td> 确认新密码：</td><td><input type="password"  value="" id="new_pwd2"/> </td></tr>
<tr><td colspan="2" style="text-align: center;"><input type="submit" value="修改" /></td> <tr>
</table>
  </form>
   
   </fieldset>
  </div>

  </body>
</html>
