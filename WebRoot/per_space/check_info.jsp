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

<body style="overflow-x: hidden;background:transparent;" >
	<!-- 运动信息显示页面 -->
	<s:if test="#list.size()==0"><h3>快去参加活动吧！</h3></s:if>
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
					<br /> <span> 活动发起人：<s:property value="#c.name" />
					</span><br/><span> 手机：<s:property value="#c.phone" />
					</span><br />&nbsp;&nbsp;
					<form action="check_del.action" method="post" onsubmit="return check();">
					<input type="hidden" name="info_id" value="<s:property value="#c.id" />"/>
					<input type="hidden" name="check_userid" value="<%=session.getAttribute("userid").toString() %>"/>
						
						<s:set name="nowTime" value="new java.util.Date()"></s:set>
	<s:set name="lessTime" value="#c.time"></s:set>
	<s:set name="timeState" value="(#lessTime.getTime()+24*60*60*1000-#nowTime.getTime())>0" />
	
	
	<s:if test='#lessTime == null || #timeState'>
						 <input type="submit" value="取消"><br /> 
						 </s:if><s:else><span style="color:#736763;">消息已过期！</span></s:else>
						</form> 
						 <span></span>
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
   if(confirm("确认要取消吗？？？"))
     {return true;}
   else 
   {
   return false;
   }
 }
        $(function () {
           
            $("img.lazy").lazyload({
    effect : "fadeIn"
});
        });
    </script>
</body>
</html>
