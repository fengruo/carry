<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head>
<title>携动人生首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/scrolltopcontrol.js"></script>
<style>
#scrollBar A {
	TEXT-INDENT: -2000em; WIDTH: 45px;HEIGHT: 80px;border-radius: 15px; DISPLAY: block; BACKGROUND: url(img/top.png) no-repeat;  OVERFLOW: hidden; CURSOR: pointer
}
#scrollBar A:hover {
	border-radius: 35px;
}
</style>
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
        font-size: 16px;
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
    </style>
<!--Fireworks 8 Dreamweaver 8 target.  Created Thu Apr 06 10:24:27 GMT+0800 2017-->
  <link rel="stylesheet" href="css/web.css" />
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
   <td colspan="29"><div style="width:652; height:28;"></div></td>
   <td colspan="15"><div style="width:212; height:28;"><span style="float: right;font-size: 12px;color: #FF7F52;"><span>
   <%=session.getAttribute("username").toString()%>,欢迎你！
   </span>
   <a href="login_space_ed.jsp" class="a1">SPACE</a>
	<a href="../classify/quit.jsp" class="a1">EXIT</a></a>
   </div></td>
  </tr>
  <tr>
   <td colspan="4"> <%
String user_name=(String)session.getAttribute("username");
if(user_name==null||user_name.equals("")){
	%>
   <a href="index.jsp"><img name="n_r4_c9" src="img/r4_c9.jpg" width="135" height="36" border="0" id="n_r4_c9" alt="" /></a>
   <%
   }else{
    %>
     <a href="index.jsp"><img name="n_r4_c9" src="img/r4_c9.jpg" width="135" height="36" border="0" id="n_r4_c9" alt="" /></a>
    <%
    }
     %></td>
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
   <td colspan="50"  style="padding-top: 0px;border: 0px solid red;vertical-align: top; " >
   <div style="height: 100px;">
       <iframe align="left" width="190px;"  src="../per_space/frame_nei.jsp" style="overflow-x:hidden;"  frameborder="0" scrolling="no"  id="iframepage" name="iframepage" onLoad="iFrameHeight()" allowtransparency="true" ></iframe>
      <iframe align="right" name="mainframe" allowtransparency="true"   width="780px"  src="../per_space/welcome.html" style="overflow-x:hidden;" scrolling="0" frameborder="0"  id="iframepage2" name="iframepage2" onLoad="iFrameHeight2()" ></iframe>
   </div>
    </td>
   
   <td><img src="img/spacer.gif" width="1" height="62" border="0" alt="" /></td>
  </tr>
 <tr>
 

  </tr>
  </tr>
  <tr>
    <td colspan="52"><div style="width:973; ">
   <jsp:include page="../foot/footer.jsp"></jsp:include>
   
   </div></td>
  </tr>
</table>
<div class="right-sider-bar">
<a target="_blank" href="#"><img src="img/qq_page.png"/></a>
</div>


     </div>
     <script type="text/javascript" language="javascript">

    function iFrameHeight() {

        var ifm= document.getElementById("iframepage");

        var subWeb = document.frames ? document.frames["iframepage"].document :

ifm.contentDocument;

            if(ifm != null && subWeb != null) {

            ifm.height = subWeb.body.scrollHeight;

            }

    }
    function iFrameHeight2() {

        var ifm2= document.getElementById("iframepage2");

        var subWeb2 = document.frames ? document.frames["iframepage2"].document :

ifm2.contentDocument;

            if(ifm2 != null && subWeb2 != null) {

            ifm2.style.height = subWeb2.body.scrollHeight;

            }

    } 
window.setInterval("iFrameHeight2();", 100);
</script> 
</body>
</html>
