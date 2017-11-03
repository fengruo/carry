<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix ="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en" >
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<style type="text/css" media="screen">
		* {margin: 0; padding: 0; }
		.scrolltxt_con {display: inline-block;height: 300px;line-height: 10px;margin: 0 0 0  0;width:100%;overflow: hidden;}
		body {
			font-family: Ubuntu, arial, verdana;
			background: #FFFFFF;
		}
		.pricing_table {
			line-height: 150%;
			font-size: 12px;
			margin: 0 auto;
			width: 75%;
			max-width: 800px;
			padding-top: 0px;
			margin-top: 50px;
		}
		.price_block {
			text-align: center;
			width: 100%;
			color: #F0D741;
			float: left;
			list-style-type: none;
			transition: all 0.25s;
			position: relative;
			box-sizing: border-box;
			margin-bottom: 5px;
			border-bottom: 1px solid transparent;
		}
		/*Price heads*/
		.pricing_table h3 {
			text-transform: uppercase;
			padding: 5px 0;
			background: green;
			margin: -10px 0 1px 0;
		}
		/*Price tags*/
		.price {
			display: table;
			background:#909392 ;
			width: 100%;
			height: 70px;
		}
		.price_figure {
			font-size: 24px;
			text-transform: uppercase;
			vertical-align: middle;
			display: table-cell;
		}
		.price_number {
			font-weight: bold;
			display: block;
		}
		/*Features*/
		.features {
			background: #DEF0F4;
			color: #000;
		}
		.features li {
			padding: 8px 15px;
			border-bottom: 1px solid #ccc;
			font-size: 11px;
			list-style-type: none;
		}
		.price_block:hover {
			box-shadow: 0 0 0px 5px rgba(0, 0, 0, 0.5);
			transform: scale(1.04) translateY(-5px);
			z-index: 1;
			border-bottom: 0 none;
		}
		.price_block:hover .price {
			background:linear-gradient(#DB7224, #F9B84A);
			box-shadow: inset 0 0 45px 1px #DB7224;
		}
		.price_block:hover h3 {
			background: #222;
		}
		.price_block:hover .action_button {
			background: linear-gradient(#F9B84A, #DB7224);
		}
		@media only screen and (min-width : 768px){
			.price_block {width: 25%;}
			.price_block {border-right: 1px solid transparent; border-bottom: 0 none;}
			.price_block:last-child {border-right: 0 none;}
			.price_block:hover {border: 0 none;}
		}

		.title{float: left;}
		.date{float: right;}
		.scrolltxt_con .features li {height: 15px;}
		.scrolltxt_con .features li a{text-decoration: none;color: #222; }
	</style>
	<script type="text/javascript" src="js/jquery-1.5.2.min.js"></script>

</head>
<body>
<ul class="pricing_table">

	<li class="price_block">
		<h3>Starter</h3>
		<div class="price">
			<div class="price_figure">
				<span class="price_number">运动视界</span>
			</div>
		</div>
		<div  class="demo" style=" overflow:hidden;height:300px;width:100%; border:1px solid #666;" >
			<div  class="scrolltxt_con"  id="3gAdvert1"><ul class="features">
		<s:iterator value="list" >
				<li><div class="title"><a href="../news/new_details.jsp?id=<s:property value="id"></s:property>"><s:property value="title"></s:property></a></div><div class="date"><s:property value="time"></s:property></div></li>
		</s:iterator>
			</ul>
			</div><div  class ="demo2"></div>
		</div>
	</li>

	<li class="price_block">
		<h3>Starter</h3>
		<div class="price">
			<div class="price_figure">
				<span class="price_number">校园你可知</span>
			</div>
		</div>
		<div  class="demo" style=" overflow:hidden;height:300px;width:100%; border:1px solid #666;" >
			<div  class="scrolltxt_con"  id="3gAdvert"><ul class="features">
			<s:iterator value="list2" >
				<li><div class="title"><a href="../news/new_details.jsp?id=<s:property value="id"></s:property>"><s:property value="title"></s:property></a></div><div class="date"><s:property value="time"></s:property></div></li>
			</s:iterator>
				<!-- <li><div class="title"><a href="#">新闻</a></div><div class="date">2017-4-2</div></li>
				<li><div class="title"><a href="#">新闻</a></div><div class="date">2017-4-2</div></li>
				<li><div class="title"><a href="#">新闻</a></div><div class="date">2017-4-2</div></li>
				<li><div class="title"><a href="#">新闻</a></div><div class="date">2017-4-2</div></li>
				<li><div class="title"><a href="#">新闻</a></div><div class="date">2017-4-2</div></li>
				<li><div class="title"><a href="#">新闻</a></div><div class="date">2017-4-2</div></li>
				<li><div class="title"><a href="#">新闻</a></div><div class="date">2017-4-2</div></li>
				<li><div class="title"><a href="#">新闻</a></div><div class="date">2017-4-2</div></li>
				<li><div class="title"><a href="#">新闻</a></div><div class="date">2017-4-2</div></li> -->
			</ul>
			</div><div  class ="demo2"></div>

		</div>

	</li>


	<li class="price_block">
		<h3>Starter</h3>
		<div class="price">
			<div class="price_figure">
				<span class="price_number">运动趣事</span>
			</div>
		</div>
		<div  class="demo" style=" overflow:hidden;height:300px;width:100%; border:1px solid #666;" >
			<div  class="scrolltxt_con"  id="3gAdvert3"><ul class="features">
		<s:iterator value="list3" >
				<li><div class="title"><a href="../news/new_details.jsp?id=<s:property value="id"></s:property>"><s:property value="title"></s:property></a></div><div class="date"><s:property value="time"></s:property></div></li>
		</s:iterator>
				
			</ul>
			</div><div  class ="demo2"></div>

		</div>

	</li>
	<li class="price_block">
		<h3>Starter</h3>
		<div class="price">
			<div class="price_figure">
				<span class="price_number">运动小知识</span>
			</div>
		</div>
		<div  class="demo" style=" overflow:hidden;height:300px;width:100%; border:1px solid #666;" >
			<div  class="scrolltxt_con"  id="3gAdvert5"><ul class="features">
		<s:iterator value="list4" >
				<li><div class="title"><a href="../news/new_details.jsp?id=<s:property value="id"></s:property>"><s:property value="title"></s:property></a></div><div class="date"><s:property value="time"></s:property></div></li>
		</s:iterator>
			
			</ul>
			</div><div  class ="demo2"></div>

		</div>

	</li>

</ul>

<script language="javascript"  type="text/javascript">
	//系统消息滚动
	var Class1 = {
		create: function () {
			return function () {
				this.initialize.apply(this, arguments);
			}
		}
	}
	Function.prototype.bind = function (object) {
		var method = this;
		return function () {
			method.apply(object, arguments);
		}
	}
	var Scroll1 = Class1.create();
	Scroll1.prototype = {
		initialize: function (element, height) {
			this.element = document.getElementById(element);
			//alert(this.element.innerHTML)
			this.element.innerHTML += this.element.innerHTML;
			this.height = height;
			this.maxHeight = this.element.scrollHeight / 2;
			this.counter = 0;
			this.scroll();
			this.timer = "";
			this.element.onmouseover = this.stop.bind(this);
			this.element.onmouseout = function () { this.timer = setTimeout(this.scroll.bind(this), 1000); } .bind(this);
		},
		scroll: function () {
			if (this.element.scrollTop < this.maxHeight) {
				this.element.scrollTop += 5;
				this.counter += 3;
			} else {
				this.element.scrollTop = 0;
				this.counter = 0;
			}

			if (this.counter < this.height) {
				this.timer = setTimeout(this.scroll.bind(this), 10);
			} else {
				this.counter = 0;
				this.timer = setTimeout(this.scroll.bind(this), 3126);
			}
		},
		stop: function () {
			clearTimeout(this.timer);
		}
	}

	new Scroll1("3gAdvert", 80);
	new Scroll1("3gAdvert1", 80);
	new Scroll1("3gAdvert3", 80);
	new Scroll1("3gAdvert5", 80);

</script>
<script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="js/jquery.gradientify.min.js"></script>
<script>
	$(document).ready(function() {
		$("body").gradientify({
			gradients: [
				{ start: [88,204,202], stop: [188,244,243] },
				{ start: [169,171,166], stop: [227,222,221] },
				{ start: [122,230,243], stop: [188,244,243] }
			]
		});
	});
</script>
</body>
</html>
