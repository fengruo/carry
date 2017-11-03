<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>携动人生</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="../css/qxtx.css" />
<link rel="stylesheet" href="css/huadong.css" />
<style>
img.lazy {position:absolute;} 
</style>

<script type="text/javascript" src="/js/jquery.js"></script>

	  
<!-- Main CSS -->
<link rel="stylesheet" href="../css/main.css">    
</head>
<body  >
<!-- Preloader -->
<div class="preloader">
	<div class="preloader10">
		<span></span>
		<span></span>
	</div>
</div>
	<s:if test="#list.size()==0"><h3 style="line-height: 200px;text-align: center;">暂时还没有信息，期待你的发起！</h3></s:if><s:else>
	<!-- 运动信息显示页面 -->
	<s:set name="state1" value="123"></s:set>
	<s:iterator value="#list" var="c" status="index1">
		<s:set name="nowTime" value="new java.util.Date()"></s:set>
	<s:set name="lessTime" value="#c.time"></s:set>
	<s:set name="timeState" value="(#lessTime.getTime()+24*60*60*1000-#nowTime.getTime())>0" />
	
	
	<s:if test='#lessTime == null || #timeState'>
	<s:set name="state1" value="456"></s:set>
		<input type="hidden" id="index1_count" value="<s:property value="#list.size()" />"/>
		<div id="mei">
			<dl>
				<dt>
				<ul class="caselist">
	<li>
		<img class="lazy img-responsive" src="1.png" 
						data-original='fileShow.action?id=<s:property value ="#c.id"/>'
						alt="Viper Corner"/> 
		<div class="tagDiv1">
			<a href="#" class="tagImg2" target="_blank"></a>
			<h3  style="color:#FF7A4D;"><s:property value="#c.sport_name1" /></h3>
			<p class="tagP1">类型：<s:property value="#c.sport_name" /></p>
			<p class="tagP2" style="color:#FB4406;font-weight: bold;"><s:property value="#c.sport_detail" /></p>
		</div>
	</li>
	
</ui> 
				</dt>
				<dd>
					<span> 活动名称：<span class="xianshi"><s:property value="#c.sport_name" /></span>
					</span><br /> <span>时间：<span class="xianshi"><s:date name="#c.time"
							format="MM-dd HH:mm" /> </span></span><br /> <span>地点：<span class="xianshi"><s:property
							value="#c.address" /></span>
					</span><br /> <span> 活动发起人：<span class="xianshi"><s:property value="#c.name" /></span>
					</span><br /> <span > 联系方式：
					<s:if test="#session.username==null">
					<span style="color:#3E5665;">登陆后显示</span>
					</s:if><s:else>
					<span class="xianshi">&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="#c.phone" /></span>
					</s:else>
					</span><br /> <span> 需要人数：<span class="xianshi"><s:property value="#c.demandnumber" /></span></span><br/>
					<span>	响应人数：<span class="xianshi"><s:property value="#c.checknumber" /></span>
					</span><br />
					<%
					String user_name = (String) session.getAttribute("username");
							if (user_name == null || user_name.equals("")) {
					%>
					<a style="color: #3E5665;float: right;"><span>请登陆后参与&nbsp;&nbsp;</span></a>
					<%
						} else {
					%>

					<s:form action="check_servlet" method="post"  onsubmit=" return check();">
						<input type="hidden" name="pageid" value="<s:property value ="#c.pageid"/>" />
						<input type="hidden" name="info_id" value="<s:property value ="#c.id"/>" />
						<input type="hidden" name="up_userid" value="<s:property value ="#c.user_id"/>" />
						<input type="hidden" name="check_userid" value="<%=session.getAttribute("userid").toString()%>" />
						<s:if test="#c.state==0">
						<!-- 判断是响应 -->
						<s:iterator value="#check_info" var="d" status="index2">
						<s:if test="#d.info_id==#c.id&&#d.check_userid==#session.userid">
						
						<input id='check_<s:property value="#index1.getCount()"/>'  class="inp" type="submit" value="您已参与" style="color:red;" disabled="disabled" />
						</s:if>
						</s:iterator>
						
						<input id='info_<s:property value="#index1.getCount()"/>' class="inp" type="submit" value="我要参与" />
						
						
						</s:if><s:else>
						<a style="color: red;float: right;"><span>参与者已达到发布者需求</span></a>
						</s:else>
						
					</s:form>
					<%
						}
					%>
				</dd>
			</dl>
		</div>
		<s:if test="#index1.getCount()%2==0">
		
		
		</s:if>
		</s:if>
	</s:iterator>
	<s:if test='#state1=="123"'><h3 style="line-height: 200px;text-align: center;">暂时还没有信息，期待你的发起！</h3></s:if>
</s:else>

	<div style="clear:both"></div>
	<script src="../js/jquery.js"></script>
	<script src="../js/jquery.lazyload.js"></script>
	<script type="text/javascript">
 	
	 function check()
 {
   if(confirm("确认要参与吗？？？"))
     {return true;}
   else 
   {
   return false;
   }
 }
	$(function() 
	{
			
		});
		
	/* $("img.lazy").mouseover(function()
	{
      $(this).animate({top:'20px'});
	});
    $("img.lazy").mouseleave(function()
    {
    
     $(this).animate({top:'20px'});
  }
	); */
	 $("img.lazy").lazyload({
	 			
				effect : "fadeIn",
				});
 
	//是否响应过判断
	$(document).ready(function()
{
	var e= $("#index1_count").val();
	//alert(e);
	for(var i=1;i<=e;i++){
		
		var q= $("#check_"+i).val();
		//alert(q);
		if(q=="您已参与"){
	//	$("#check_"+i).show();
		$("#info_"+i).hide();
	}else{
		//$("#check_"+i).show();
		//$("#info_"+i).hide();
	}
	}
	

});
	
	
	
	</script>
	<script type="text/javascript">
$(function(){
	var moveHeight = 170,
		moveTime = 200,
		curMove = null;
	$('.caselist li').hover(function (e){
		var curLi = $(this);
		curMove = setTimeout(function (){
			curLi.children('a.tagImg1').animate({ top: '-' + moveHeight + 'px' }, moveTime);
			curLi.children('div.tagDiv1').animate({ top: '0px' }, moveTime);
		}, 200);
	},function(e){
		clearTimeout(curMove);
		$(this).children('a.tagImg1').animate({ top: '0px' }, moveTime);
		$(this).children('div.tagDiv1').animate({ top: moveHeight + 'px' }, moveTime);
	});
});
</script>
	<script src="../js/jquery.js"></script>

<script src="../js/main.js"></script>
</body>
</html>
