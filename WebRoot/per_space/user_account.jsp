<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script> 
<script>
$(document).ready(function()
{
   $("#reg").click(function()
   {
    if($("#inputName").val()==null||$("#inputName").val()=="")
   {
      alert("请重新输入姓名");
       return false;
   }
   else if($("#inputPhone").val()!=""&&$("#inputPhone").val()!=null)
   {
     var reg = /^1((3[0-9])||(5[0-2])||(5[2-9])||(8[2-9])||(82))\d{8}$/g; 
     if(!reg.test($("#inputPhone").val()))
     {
       alert("手机号格式不正确！！！");
       return false;
     }  
   else if($("#inputEmail").val()!=""||$("#inputEmail").val()!=null)
   {
       var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
       var isok=reg.test($("#inputEmail").val());
       if(!isok)
       {
          alert("邮箱格式不正确。");
          return false;
       }
   }else{
   		alert("邮箱不能为空。");
          return false;
   } 
   }else{
   alert("输入不能为空。");
          return false;
   }  
   }); 
});
function check()
{
  confirm("确认修改？");
}

</script>
  </head>
  
  <body bgcolor="#79CEC7" style="align: center;">
		<div style="padding-top: 30px; padding-left: 30px">
   
				
  
  <fieldset style="width: 600px; border-color: #000000; padding-left: 10px">
			
				<legend>
					<font size="-1" color="#000000"><b> 用户信息</b> </font>
				</legend>
				<div class="ErrorDiv">
					<s:fielderror />
					<s:actionerror />
				</div> 
  	
<table>
<s:form action="user_account_revise.action" method="post" theme="simple" enctype="multipart/form-data" namespace="/" onsubmit="return check();">
<s:iterator value="#list" var="c">
<tr><td>学号：</td><td><s:property value="#c.studentnum"/><input type="hidden" value="<s:property value="#c.studentnum"/>" name="studentnum"></td></tr>
  <tr><td> 姓名：</td><td><input type="text" name="name" id="inputName" value="<s:property value="#c.name"/>"> </td></tr>
<tr><td>  QQ：</td><td><input type="text" name="qq" value="<s:property value="#c.qq"/>"> </td></tr>
 <tr><td>  手机：</td><td><input type="text" name="phone" id="inputPhone" value="<s:property value="#c.phone"/>"> </td></tr>
<tr><td> 邮箱：</td><td><input type="text" name="email"  id="inputEmail" value="<s:property value="#c.email"/>"> </td></tr>
<tr><td>  学校：</td>
<td>
        <div class="col-xs-4">
          <select  name="school"> 
          <option value="<s:property value="#c.school"/>"><s:property value="#c.school"/></option>
        
          </select>
        </div>
</td>
</tr>
<tr><td colspan="2" style="text-align: center;"><input type="submit" value="修改"  id="reg"/></td> <tr>

  </s:iterator>	
 
  </s:form>
   </table>
   </fieldset>
  </div>

  </body>
</html>
