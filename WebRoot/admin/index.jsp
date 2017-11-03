<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
  <head>
	<meta charset="utf-8">
    <title>携动人生后台管理系统</title>
	
	<link rel="stylesheet" href="../common/css/sccl.css">
	<link rel="stylesheet" type="text/css" href="../common/skin/qingxin/skin.css" id="layout-skin"/>
    <script type="text/javascript">
    var c="<%=request.getParameter("state") %>";
	
	if(c==0){
		
	}else{
		alert("请登陆！");
		
		window.location.href="../admin/login.jsp";
	}
   </script>
  </head>
  
  <body>
	<div class="layout-admin">
		<header class="layout-header">
			<span class="header-logo">携动人生网后台管理系统</span> 
			<a class="header-menu-btn" href="javascript:;"><i class="icon-font">&#xe600;</i></a>
			<ul class="header-bar">
				<li class="header-bar-nav">
					<a href="javascript:;">admin<i class="icon-font" style="margin-left:23px;">&#xe60c;</i></a>
					<ul class="header-dropdown-menu">
						<li><a href="login.jsp">切换用户</a></li>
						<li><a href="../index.jsp">退出</a></li>
					</ul>
				</li>
			</ul>
		</header>
		<aside class="layout-side">
			<ul class="side-menu">
			  
			</ul>
		</aside>
		
		
		<section class="layout-main">
			<div class="layout-main-tab">
				<button class="tab-btn btn-left"><i class="icon-font">&#xe60e;</i></button>
                <nav class="tab-nav">
                    <div class="tab-nav-content">
                        <a href="adminHome.jsp" target="iframe0" class="content-tab active" data-id="home.html ">首页</a>
                    </div>
                </nav>
                <button class="tab-btn btn-right"><i class="icon-font">&#xe60f;</i></button>
			</div>
			<div class="layout-main-body">
				<iframe class="body-iframe" name="iframe0" width="100%" height="99%" src="adminHome.jsp" frameborder="0" data-id="home.html" seamless></iframe>
			</div>
		</section>
		<div class="layout-footer">@20170229 携动人生</div>
	</div>
	<script type="text/javascript" src="../common/lib/jquery-1.9.0.min.js"></script>
	<script type="text/javascript" src="../common/js/sccl.js"></script>
	<script type="text/javascript" src="../common/js/sccl-util.js"></script>
  </body>
</html>
