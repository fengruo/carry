<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
	<%@taglib uri="/struts-tags" prefix="s" %>
	
	
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
<link rel="stylesheet" href="../css/uped_info.css" />
</head>

<body style="background:transparent;">
	<!-- 运动信息显示页面 -->
	<s:if test="#list.size()==0"><h3>快去发布信息吧！</h3></s:if>
	<s:else>
	<s:iterator value="#list" var="c">	
		
	<div id="mei">	
			<dl>
				<dt>   <img class="lazy img-responsive" data-original='fileShow.action?id=<s:property value ="#c.id"/>'  alt="Viper Corner">
    <br/> 
			</dt>
				<dd><span>
				
				活动名称：<s:property value ="#c.sport_name"/></span><br /> 
				<span>时间：<s:date name="#c.time" format="MM-dd HH:mm"/> </span><br />
					<span>地点：<s:property value ="#c.address"/></span>
					<br /> 
						 <span>响应人数：<s:property value ="#c.checknumber"/></span><br /> 
						 <span>
			         <form onsubmit="return check();"action="upedDelAction.action" method="post" >
						 <input type="hidden" name="id" value="<s:property value ="#c.id"/>">
						  <input type="hidden" name="user_id" value="<%=session.getAttribute("userid").toString() %>"/>
						  <input type="hidden" name="studentnum" value="<%=session.getAttribute("studentnum").toString() %>"/>
					&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="删除">
					</form></span>
			</dd>
		</dl>
</div>
</s:iterator>
	</s:else>
<div style="clear: both"></div>
  <script src="../js/jquery.js"></script>
    <script src="../js/jquery.lazyload.js"></script>
    <script type="text/javascript">
    function check()
    {
     if(confirm("确认删除？"))
     {
        return true;
     } 
     else return false;  
    }
        $(function () {
           
            $("img.lazy").lazyload({
    effect : "fadeIn"
});
        });
    </script>
</body>
</html>
