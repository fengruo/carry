<%@page import="com.carry.operate.News_operation"%>
<%@ page language="java" import="java.util.*,com.carry.entity.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html >
<head>
<title>携动人生首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../css/stylesheet.css"/>
<link rel="stylesheet" href="css/web.css"/>
<style type="text/css">td img {display: block;}</style>

 <style>
      *{
        margin: 0;
        padding: 0;
      }
      body{
        background: url(img/bg-main.png) repeat;
      }
      .main-content{
        height: 475px;
        width: 944px;
        margin: 40px auto;
        background: url(img/shadow.png) bottom left;
      }
      .tab-a{
        float: left;
        width: 236px;
        height: 475px;
        background: url(img/bg.png) no-repeat;
        text-align: center;
      }
      .main-content .tab-a:hover{
        background: url(img/bg-sel.png) no-repeat;
      }
      /*.main-content .tab-a:hover div{
        width: 169px;
        height: 169px;
        border: 1px solid #fff;
        border-radius: 50%;
        margin: 0 auto;
        overflow: hidden;
      }*/
      .main-content .tab-a img{
        
        
      }
      .main-content .tab-a .bac {
        height: 169px;
        width: 172px;
        margin: 0 auto;
        background-position:center ;
        background-repeat:no-repeat ; 
        background-size:100%;
        margin-top: 45px; 
      }
      .main-content .tab-a .bac-a{
        background-image: url(img/img_1.png);
      }
      .main-content .tab-a .bac-b{
        background-image: url(img/img_2.png);
      }
      .main-content .tab-a .bac-c{
        background-image: url(img/img_3.png);
      }
      .main-content .tab-a .bac-d{
        background-image: url(img/img_4.png);
      }
      .main-content .tab-a .text{
        background-position:center ;
        background-repeat: no-repeat ;  
        width: 100%;
        margin: 20px 0;
        height: 35px;
      }
      .main-content .tab-a .word{
        font-family:"微软雅黑";
        font-size: 20px;
      }
      .main-content .tab-a  .myscroll{
        font-family:"微软雅黑";
        font-size: 12px;
        
      }
     
      .main-content .tab-a .text-a{
        background-image: url(img/good.png);
      }
      .main-content .tab-a:hover .text-a{
        background-image: url(img/good-w.png);
      }
      .main-content .tab-a .text-b{
        background-image: url(img/great.png)
      }
      .main-content .tab-a:hover .text-b{
        background-image: url(img/great_w.png);
      }
      .main-content .tab-a .text-c{
        background-image: url(img/Hello.png);
      }
      .main-content .tab-a:hover .text-c{
        background-image: url(img/Hello_w.png);
      }
      .main-content .tab-a .text-d{
        background-image: url(img/love.png);
      }
      .main-content .tab-a:hover .text-d{
        background-image: url(img/love_w.png);
      }
      .main-content .tab-a .word{
        color:#ff8838;
        font-family: "微软雅黑";
      }
      .main-content .tab-a:hover .word{
        color: #fff;
      }
       .title{ float: left;}
      .title a { width: 120px;overflow: hidden;height: 30px;float: left;text-align: left;}
      .title a:hover{width:100%;}
      .date{float: right;}
      
 .myscroll { width: 235px; height: 160px; margin: 5 auto; border-left: 1px solid #ccc; line-height: 30px; font-size: 15px; overflow: hidden;}
.myscroll li { height: 30px; margin-left: 15px;padding-right:10px;list-style-type:none;}
.myscroll a { color: #333; text-decoration: none;}
.myscroll a:hover { color: #ED5565; text-decoration: underline;}
    </style>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/scroll.js"></script>
<script type="text/javascript">
$(function(){
	$(".myscroll").myScroll({
		speed: 50, //数值越大，速度越慢
		rowHeight: 30 //li的高度
	});
});
</script>
  </head>
  <body bgcolor="#79CEC7" style="margin:0 auto;">
  
<table border="0" cellpadding="0" cellspacing="0" width="1200" style="margin:0 auto;">
<!-- fwtable fwsrc="img/未命名" fwbase="网页制作.jpg" fwstyle="Dreamweaver" fwdocid = "1572340760" fwnested="0" -->
  <tr>
   <td><img src="img/spacer.gif" width="107" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="6" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="10" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="20" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="25" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="16" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="28" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="10" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="73" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="9" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="24" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="29" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="10" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="23" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="24" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="8" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="99" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="20" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="33" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="26" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="6" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="24" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="28" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="15" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="11" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="101" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="8" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="22" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="3" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="8" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="14" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="5" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="25" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="22" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="13" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="6" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="15" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="41" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="11" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="30" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="11" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="6" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="16" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="4" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="7" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="3" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="2" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="22" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="3" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="114" height="1" border="0" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>

  <tr>
   <td colspan="54"><img name="n_r1_c1" src="img/r1_c1.jpg" width="1200" height="58" border="0" id="n_r1_c1" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="58" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="17"><img name="n_r2_c1" src="img/r2_c1.jpg" width="107" height="742" border="0" id="n_r2_c1" alt="" /></td>
   <td rowspan="5" colspan="6"><img name="n_r2_c2" src="img/r2_c2.jpg" width="105" height="106" border="0" id="n_r2_c2" alt="" /></td>
   <td rowspan="5"><img name="n_r2_c8" src="img/r2_c8.jpg" width="10" height="106" border="0" id="n_r2_c8" alt="" /></td>
   <td colspan="46"><img name="n_r2_c9" src="img/r2_c9.jpg" width="978" height="15" border="0" id="n_r2_c9" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="15" border="0" alt="" /></td>
  </tr>
  <tr>
   <%
String user_name=(String)session.getAttribute("username");
if(user_name==null||user_name.equals("")){
	%>
   <td colspan="29"><img name="n_r3_c9" src="img/r3_c9.jpg" width="652" height="28" border="0" id="n_r3_c9" alt="" /></td>
   <td colspan="3"><img name="n_r3_c38" src="img/r3_c38.jpg" width="41" height="28" border="0" id="n_r3_c38" alt="" /></td>
   <td><img name="n_r3_c41" src="img/r3_c41.jpg" width="15" height="28" border="0" id="n_r3_c41" alt="" /></td>
   <td><a href="../account/login.html"><img name="n_r3_c42" src="img/r3_c42.jpg" width="41" height="28" border="0" id="n_r3_c42" alt="" /></a></td>
   <td><img name="n_r3_c43" src="img/r3_c43.jpg" width="11" height="28" border="0" id="n_r3_c43" alt="" /></td>
   <td colspan="2"><a href="../account/register.html"><img name="n_r3_c44" src="img/r3_c44.jpg" width="41" height="28" border="0" id="n_r3_c44" alt="" /></a></td>
   <td colspan="2"><img name="n_r3_c46" src="img/r3_c46.jpg" width="22" height="28" border="0" id="n_r3_c46" alt="" /></td>
   <td colspan="6"><img name="n_r3_c48" src="img/r3_c48.jpg" width="41" height="28" border="0" id="n_r3_c48" alt="" /></td>
   <%
 }else{
  %>
   <td colspan="29"><div style="width:652; height:28;"></div></td>
   <td colspan="16"><div style="width:212; height:28;border: 0px solid green;"><span style="font-size: 12px;color: #FF7F52;">
   <%=session.getAttribute("username").toString()%>,欢迎你！
   </span>
   <a href="login_space_ed.jsp" class="a1">SPACE</a>
	<a href="../classify/quit.jsp" class="a1">EXIT</a></span>
   </div></td>
   
    
  <%
  
  }
   %>
   <td rowspan="16"><img name="n_r3_c54" src="img/r3_c54.jpg" width="114" height="727" border="0" id="n_r3_c54" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="28" border="0" alt="" /></td>
 
  </tr>
  <tr>


   <td colspan="4"><a href="index.jsp"><img name="n_r4_c9" src="img/r4_c9.jpg" width="135" height="36" border="0" id="n_r4_c9" alt="" /></a></td>
   <td colspan="5"><a href="frame_.jsp?num=2&category_id=0"><img name="n_r4_c13" src="img/r4_c13.jpg" width="164" height="36" border="0" id="n_r4_c13" alt="" /></a></td>
   <td colspan="9"><a href="frame_.jsp?num=3&category_id=0"><img name="n_r4_c18" src="img/r4_c18.jpg" width="164" height="36" border="0" id="n_r4_c18" alt="" /></a></td>
   <td colspan="10"><a href="frame_.jsp?num=4&category_id=0"><img name="n_r4_c27" src="img/r4_c27.jpg" width="164" height="36" border="0" id="n_r4_c27" alt="" /></a></td>
   <td colspan="8"><a href="frame_.jsp?num=5&category_id=0"><img name="n_r4_c37" src="img/r4_c37.jpg" width="163" height="36" border="0" id="n_r4_c37" alt="" /></a></td>
   <td colspan="4"><img name="n_r4_c45" src="img/r4_c45.jpg" width="37" height="36" border="0" id="n_r4_c45" alt="" /></td>
   <td colspan="5"><img name="n_r4_c49" src="img/r4_c49.jpg" width="37" height="36" border="0" id="n_r4_c49" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="36" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="23"><img name="n_r5_c9" src="img/r5_c9.jpg" width="605" height="27" border="0" id="n_r5_c9" alt="" /></td>
   <td colspan="22"><img name="n_r5_c32" src="img/r5_c32.jpg" width="259" height="12" border="0" id="n_r5_c32" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="12" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="20"><img name="n_r6_c32" src="img/r6_c32.jpg" width="234" height="22" border="0" id="n_r6_c32" alt="" /></td>
   <td rowspan="2" colspan="2"><img name="n_r6_c52" src="img/r6_c52.jpg" width="25" height="22" border="0" id="n_r6_c52" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="15" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2" colspan="30"><img name="n_r7_c2" src="img/r7_c2.jpg" width="720" height="28" border="0" id="n_r7_c2" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="7" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="22"><img name="n_r8_c32" src="img/r8_c32.jpg" width="259" height="21" border="0" id="n_r8_c32" alt="" /></td>
   <td><img src="img/spacer.gif" width="1" height="21" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="10"><img name="n_r9_c2" src="img/r9_c2.jpg" width="6" height="608" border="0" id="n_r9_c2" alt="" /></td>
   <td colspan="50" style="margin-top: 0px;">
      <div style="width: 970px;  ;margin-top: 0px;">
      <div class="main-content">
      <div class="tab-a">
        <div class="bac bac-a">
        </div>
        <div class="text text-a">         
        </div>
        <div class="word"><span>运动新事</span></div>
        
        <!-- 显示新闻 -->
         <div class="myscroll"><ul>
	       <%
	          News_operation news_operation= new News_operation ();
	          List<News> list=news_operation.getNewsOne();
	          for(News news:list)
	          {
	       %>
				<li ><div class="title"><a href="../news/new_details.jsp?id=<%=news.getId()%>"><%=news.getTitle() %></a></div><div class="date"><%=news.getTime()%></div></li>
			  <% }%> 
			</ul>
	    </div>
	
      </div>
      <div class="tab-a">
        <div class="bac bac-b">
        </div>
        <div class="text text-b">         
        </div>
        <div class="word"><span>运动你可知</span></div>
        <!-- 显示新闻 -->
        <div class="myscroll"><ul>
	       <%
	          News_operation news_operation1= new News_operation ();
	          List<News> list1=news_operation1.getNewsTwo();
	          for(News news:list1)
	          {
	       %>
				<li ><div class="title"><a href="../news/new_details.jsp?id=<%=news.getId()%>"><%=news.getTitle() %></a></div><div class="date"><%=news.getTime()%></div></li>
			  <% }%> 
			</ul>
	    </div>
	    
      </div>
      <div class="tab-a">
        <div class="bac bac-c">
        </div>
        <div class="text text-c">
        </div>
        <div class="word"><span>青春洋溢</span></div>
        
        <div class="myscroll"><ul>
	       <%
	          News_operation news_operation2= new News_operation ();
	          List<News> list2=news_operation2.getNewsThree();
	          for(News news:list2)
	          {
	       %>
				<li ><div class="title"><a href="../news/new_details.jsp?id=<%=news.getId()%>"><%=news.getTitle() %></a></div><div class="date"><%=news.getTime()%></div></li>
			  <%}%> 
			</ul>
	    </div>
	    
      </div>
      <div class="tab-a">
        <div class="bac bac-d"> 
        </div>
        <div class="text text-d">
        </div>
        <div class="word"><span>携动生活</span></div>
        
        <div class="myscroll"><ul>
	       <%
	          News_operation news_operation3= new News_operation ();
	          List<News> list3=news_operation3.getNewsFour();
	          for(News news:list3)
	          {
	       %>
				<li ><div class="title"><a href="../news/new_details.jsp?id=<%=news.getId()%>"><%=news.getTitle() %></a></div><div class="date"><%=news.getTime()%></div></li>
			  <% }%> 
			</ul>
			
	    </div>
	    
      </div>
    </div>
      </div>
    </td>
   
   <td><img src="img/spacer.gif" width="1" height="62" border="0" alt="" /></td>
  </tr>
 <tr>
 

  </tr>
  </tr>
  <tr>
   
  <td colspan="52" >
      <div class="container foot-container">
  <div class="container foot-inner-container">
  <div class="site-info row" style="padding-left: 35px;">
    <dl style=" ">
        <dt >关注我们</dt>
        <dd><a target="_blank" href="javascript:window.open ('../a_page/MyHtml.html', 'newwindow', 'height=190px, width=440px, top=100px,left=450px,toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no')">关于携动人生网</a></dd>
        <dd><a target="_blank" href="">微信公众平台</a></dd>
           </dl><dl>
        <dt>网站信息</dt>
        <dd><a target="_blank" href="../admin/login.jsp">管理员登陆</a></dd>
        <dd><a target="_blank" href="javascript:window.open ('../a_page/ygsm.html', 'newwindow', 'height=190px, width=440px, top=100px,left=450px,toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no')">阳光声明</a></dd>
        <dd><a target="_blank" href="mailto:xdrs@163.com">用户反馈</a></dd>      </dl><dl>
        <dt>用户帮助</dt>
        <dd><a target="_blank" href="../account/register.html">账号注册</a></dd>
     
             </dl><dl>
        <dt>联系我们</dt>
        <dd><a target="_blank" href="mailto:xdrs@163.com">阳光邮箱</a></dd>
        <dd><a target="_blank" href="">QQ交流群</a></dd>
            </dl>   
     
    </div>
    <div class="friend-link">
    
    </div>    <div class="row  copyright" style="padding-left: 20px">
   <span class="year">&copy;2017</span>
      <a href="">携动人生网</a> <a href="h" target="_blank"></a>
    </div>
  </div>

	
</div>
   
   </td>
   <td><img src="img/spacer.gif" width="1" height="131" border="0" alt="" /></td>
  </tr>
</table>

<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/scroll.js"></script>
<div class="right-sider-bar">
<a target="_blank" href="#"><img src="img/qq_page.png"/></a>
</div>
</body>
</html>
