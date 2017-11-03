<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/calender_js/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/nicEdit.js"></script>
<script type="text/javascript">
	bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
	
function check()
{
  if($("#title").val()==null||$("#title").val()=="")
  {
    alert("请输入标题");
    return false;
  }
  if($("#title").val()==null||$("#title").val()=="")
  {
    alert("请输入标题！！");
    return false;
  }
  if($("#publisher").val()==null||$("#publisher").val()=="")
  {
    alert("请输入发布人！！");
    return false;
  }
   if($("#author").val()==null||$("#author").val()=="")
  {
    alert("请输入作者！！");
    return false;
  }
  if($("#time").val()==null||$("#time").val()=="")
  {
    alert("请选择时间");
    return false;
  }
  if($("#select").val()==null||$("#select").val()=="")
  {
    alert("请选择新闻类别！！");
    return false;
  }
  else
  {return  true;}
}
</script>
<style type="text/css">
table tr td{width: 10%;}
</style>  
  
</head>

<body style="width: 100%">
 <h3 style="margin-left:40%;">新闻发布</h3>
   <form method="post" action="../news/InsertNews.action" onsubmit="return check();">
   <table >
      
      <tr><td>请输入标题:</td><td><input  type="text" name="title"  id="title"></td><td colspan="8"></td></tr>
      <tr><td >请输入发布人:</td><td><input  type="text" name="publisher" id="publisher"></td><td colspan="8"></td></tr>
      <tr><td>请输入作者:</td><td><input  type="text" name="author"  id="author"></td><td colspan="8"></td></tr>
      
      <tr>
         <td>请选择新闻发布时间:</td><td><input class="Wdate" name="time" type="text" onClick="WdatePicker()" width='270px' id="time"></td>
       <td colspan="8"></td>
      </tr>
      <tr>
      <td >
        新闻类别:
      </td>
      <td>
      <select name="categoryId" style="width: 150px; height: 20px;" id="select">
      <option  value="1">运动新事</option>
      <option  value="2">运动你可知</option>
      <option value="3">青春洋溢</option>
      <option value="4">携动生活</option>
      </select>
      </td>
      <td colspan="8"></td>
      </tr>
      <tr><td colspan="10">
    <textarea name="content" style="width: 100%;height: 100px;">
	Some Initial Content was in this textarea
    </textarea>
     </td></tr>
     <tr ><td colspan="1"></td><td ><input type="reset"  value="重置">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="发布"></td><td></td><td colspan="4"></td></tr>
  </table>
  </form>
   
</body>
</html>
