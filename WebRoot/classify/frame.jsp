<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>

<%@taglib uri="/struts-tags" prefix="s"%>

<html>
<head>


<title>携动人生</title>
<meta charset="UTF-8" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">



<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="../css/bootstrap.css" />
<link rel="stylesheet" href="../css/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="../css/frame.css" />
<script src="../js/jquery.min.js"></script>

</head>

<body>


	<!--顶部导航区域-->
	<div class="right-sider-bar"></div>
	<div
		class="navbar navbar-default navbar-static-top full-navbar-container"
		role="navigation">
		<div class="container top-container">
			<ul class="nav navbar-nav">
				<li><a href="#mobile"> <span
						class="glyphicon glyphicon-phone"></span> &nbsp;手机网站</a></li>
				<li><a href="#school">运动信息发布平台</a></li>
			</ul>
			<%
				String user_name = (String) session.getAttribute("username");
				if (user_name == null || user_name.equals("")) {
			%><ul class="nav navbar-nav navbar-right top-user-navbar">
				<li><a class="user-login" href="../account/login.html">登录</a></li>
				<li><a class="user-register" href="../account/register.html">注册</a>
				</li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right top-user-navbar">

				<li><a><span style="color: #2DB8AD;font-weight: bold;">
							<%
								out.print(session.getAttribute("username"));
							%>
					</span>,欢迎你!</a></li>
				<li><a href="../per_space/frame.jsp"><span
						style="color: #2DB8AD;font-weight: bold;">个人空间</span>
				</a>
				</li>
				<li><a class="user-register" href="quit.jsp"><span
						style="color:#818188 ;font-weight: bold;">退出</span>
				</a></li>
			</ul>
			<%
				}
			%>
		</div>
	</div>
	<!--头部区域-->
	<div class="container head-container">
		<div class="col-xs-3 logo-box">
			<a href="xyafc.edu.com" class="logo"></a>
		</div>
		<div class="col-xs-4 search-box">
			<div class="row top-search">

				<span>携动人生网 | <%
					int category_id = Integer.parseInt(request
							.getParameter("category_id"));
					int num = Integer.parseInt(request.getParameter("num"));
					if (num == 1) {
						out.print("运动那些事儿");
					} else if (num == 2) {
						out.print("棋行天下");
					} else if (num == 3) {
						out.print("步迈乾坤");
					} else if (num == 4) {
						out.print("球球作战");
					} else if (num == 5) {
						out.print("雅致闲谈");
					} else {
						out.print("阳光生活");

					}
				%> </span>
				<form action="" method="get">
					<div class="input-group">
						<input type="text" name="word" disabled="disabled"
							class="form-control input-search" placeholder="请输入关键字" /> <span
							class="input-group-btn"> <input type="submit"
							disabled="disabled" class="btn btn-default btn-search" value="查找" />
						</span>
					</div>
				</form>
			</div>
		</div>

	</div>





	<div class="navbar-inverse full-navbar-container">
		<div class="container middle-nav-container">
			<ul class="nav navbar-nav">
				<li>
					<div class="btn-group dropdown-category ">
						<span type="button" class="dropdown-toggle btn-show-category"
							data-toggle="dropdown"> 全部分类<span class="caret"></span>
						</span>
						<ul class="dropdown-menu" role="menu">
							<li>
								<dl>
									<dt>
										<a href="frame.jsp?num=2&category_id=0">棋行天下</a>
									</dt>
									<dd>
										<a href="frame.jsp?category_id=1&num=0">围棋</a>
									</dd>
									<dd>
										<a href="frame.jsp?category_id=2&num=0">象棋</a>
									</dd>
									<br />

									<dd>
										<a href="frame.jsp?category_id=3&num=0">跳棋</a>
									</dd>
									<dd>
										<a href="frame.jsp?category_id=4&num=0">其它</a>
									</dd>
								</dl></li>
							<li>
								<dl>
									<dt>
										<a href="frame.jsp?num=3&category_id=0">步迈乾坤</a>
									</dt>
									<dd>
										<a href="frame.jsp?category_id=5&num=0">骑行</a>
									</dd>
									<dd>
										<a href="frame.jsp?category_id=6&num=0">跑步</a>
									</dd>
									<br />
									<dd>
										<a href="frame.jsp?category_id=7&num=0">踏青</a>
									</dd>
									<dd>
										<a href="frame.jsp?category_id=8&num=0">其它</a>
									</dd>
								</dl></li>
							<li>
								<dl>
									<dt>
										<a href="frame.jsp?num=4&category_id=0">球球作战</a>
									</dt>
									<dd>
										<a href="frame.jsp?category_id=9&num=0">篮球</a>
									</dd>
									<dd>
										<a href="frame.jsp?category_id=10&num=0">足球</a>
									</dd>
									<br />
									<dd>
										<a href="frame.jsp?category_id=11&num=0">排球</a>
									</dd>
									<dd>
										<a href="frame.jsp?category_id=12&num=0">其它</a>
									</dd>
								</dl></li>
							<li>
								<dl>
									<dt>
										<a href="frame.jsp?num=5&category_id=0">雅致闲谈</a>
									</dt>
									<dd>
										<a href="frame.jsp?category_id=13&num=0">读书</a>
									</dd>
									<dd>
										<a href="frame.jsp?category_id=14&num=0">辩论</a>
									</dd>
									<br />
									<dd>
										<a href="frame.jsp?category_id=15&num=0">写作</a>
									</dd>
									<dd>
										<a href="frame.jsp?category_id=16&num=0">其它</a>
									</dd>
								</dl></li>
						</ul>
					</div></li>
				<li class="head-nav-item active"><a
					href="../index/login_ed.jsp">首页</a></li>
				<li class="head-nav-item "><a href="../classify/index.action">携动新闻</a>
				</li>
				<li class="head-nav-item "><a
					href="frame.jsp?num=2&category_id=0">棋行天下</a>
				</li>
				<li class="head-nav-item "><a
					href="frame.jsp?num=3&category_id=0">步迈乾坤</a>
				</li>
				<li class="head-nav-item "><a
					href="frame.jsp?num=4&category_id=0">球球作战</a>
				</li>
				<li class="head-nav-item "><a
					href="frame.jsp?num=5&category_id=0">雅致闲谈</a>
				</li>

			</ul>
		</div>
	</div>

	<!--主体区域-->

	<div class="container main-container filter-container">
		<%
			if (num > 1 && category_id == 0) {
		%>
		<iframe src="content.action?id=<%=num - 1%>" width="100%" height="70%"
			frameborder="0" width="100%" height="100%" scrolling=no
			allowTransparency="true"
			onload="this.style.height=parseInt(window.frames[0].document.body.scrollHeight);">
			使用了框架技术，但是您的浏览器不支持框架，请升级您的浏览器以便正常访问。 </iframe>
		<%
			} else if (num == 0 && category_id > 0) {
		%>
		<iframe src="content_two.action?category_id=<%=category_id%>"
			width="100%" height="70%" frameborder="0" width="100%" height="100%"
			scrolling=no allowTransparency="true"
			onload="this.style.height=parseInt(window.frames[0].document.body.scrollHeight);">
			使用了框架技术，但是您的浏览器不支持框架，请升级您的浏览器以便正常访问。 </iframe>
		<%
			}
		%>
	</div>
	<div style="width:80%;padding-left: 190px;">
		<jsp:include page="../foot/footer.jsp"></jsp:include>

	</div>
	<script src="js/jquery.gradientify.min.js"></script>
	<script>
		$(document).ready(function() {
			$("body").gradientify({
				gradients : [ {
					start : [ 88, 204, 202 ],
					stop : [ 188, 244, 243 ]
				}, {
					start : [ 122, 230, 243 ],
					stop : [ 169, 171, 166 ]
				}, {
					start : [ 122, 230, 243 ],
					stop : [ 188, 244, 243 ]
				}

				]
			});
		});
	</script>
</body>
</html>
