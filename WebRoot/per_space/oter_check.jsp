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
<link rel="stylesheet" href="../css/oter_check.css" />
<script type="text/javascript">

</script>
</head>

<body style="overflow-x: hidden;background:transparent;">

	<!-- 运动信息显示页面 -->
	<s:if test="#list.size()==0"><h3>您还未发布信息！</h3></s:if>
	<s:else>
	<s:if test="#user.size()==0"><h3>您发布的信息还没有用户响应！</h3></s:if>
	<s:else>
	<s:iterator value="#list" var="c">	
	 <s:set name="nowTime" value="new java.util.Date()"></s:set>
	<s:set name="lessTime" value="#c.time"></s:set>
	<s:set name="timeState" value="(#lessTime.getTime()+24*60*60*1000-#nowTime.getTime())>0" />
	<s:if test='#lessTime == null || #timeState'>
		<s:if test="#c.checknumber!=0">
	<div id="mei" >	
			<dl>
				<dd>   <img class="lazy img-responsive" data-original='fileShow.action?id=<s:property value ="#c.id"/>'  alt="Viper Corner">
			</dd></dl><dl>
				<dd>活动名称：<span style="color:#FF7A4D;"><s:property value ="#c.sport_name"/></span><br /> 
				时间：<span style="color:#FF7A4D;"><s:date name="#c.time" format="MM-dd HH:mm"/> </span><br />
					地点：<span style="color:#FF7A4D;"><s:property value ="#c.address"/></span>
					<br /> 
						 响应人数：<span style="color:#FF7A4D;"><s:property value ="#c.checknumber"/></span><br /> 
						 
						 </dd></dl>
						 <dl>
	<dt>&nbsp;响应用户信息：</dt>
	<s:iterator value="#user" var="d">
	
	<s:iterator value="#checkinfo" var="e">
	
	<s:if test="#e.check_userid==#d.id&&#e.info_id==#c.id">
						<dd>	姓名：<span style="color:#FF7A4D;"><s:property value ="#d.name"/></span></dd>
					 		<dd>QQ:<span style="color:#FF7A4D;"><s:property value ="#d.qq"/></span>
					 		手机:<span style="color:#FF7A4D;"><s:property value ="#d.phone"/></span></dd>
					 		</s:if>
					 		</s:iterator>
						 	</s:iterator>
						 	</dl>
						 	</div></s:if>	</s:if></s:iterator>
	</s:else>
	</s:else>
<div style="clear: both"></div>
  <script src="../js/jquery.js"></script>
    <script src="../js/jquery.lazyload.js"></script>
    <script type="text/javascript">
        $(function () {
           
            $("img.lazy").lazyload({
    effect : "fadeIn"
});
        });
    </script>
</body>
</html>
