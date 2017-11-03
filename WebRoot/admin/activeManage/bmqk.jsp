<%@page import="com.carry.until.DBConnectionManager"%>
<%@page import="com.carry.until.splitPage"%>
<%@ page language="java" import="java.util.*,com.carry.operate.*,com.carry.entity.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>携动人生</title>
<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/admin/css-table.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/style-table.js"></script>
<script type="text/javascript">
$("document").ready(function(){ 
$("#btn1").click(function(){ 
$(".checkbox").attr("checked",'true');//全选 
}); 
$("#btn2").click(function(){ 
$(".checkbox").removeAttr("checked");//取消全选 
}); 
$("#btn3").click(function(){ 
$(".checkbox").each(function(){//反选 
if($(this).attr("checked")){ 
$(this).removeAttr("checked"); 
} 
else{ 
$(this).attr("checked",'true'); 
} 
});
});
});

//选中checkbox
function getCheck(){
 if($(".checkbox:checked").size()!=0)
{
  if(confirm("确定要删除？"))
  {
  var arr=[];
  $("input[type='checkbox']:checked").each(function(){ 
       arr.push(this.value);
  });
   window.location.href="batchDelqxtx.jsp?arr="+arr; 
}
}
else {alert("请先选择！！");}
}

</script>
</head>

<body>

<table id="travel" summary="Travel times to work by main mode (Autumn 2006) - Source: London Travel Report 2007 http://www.tfl.gov.uk/assets/downloads/corporate/London-Travel-Report-2007-final.pdf">

	<caption style="text-align: center;">活动信息</caption>
    
    <thead >    
    	<tr>
            <th scope="col" rowspan="2"></th>
            <th scope="col" colspan="8">信息列表</th>
        </tr>
        
        <tr>
            
            <th scope="col">编号</th>
            <th scope="col">活动具体类别</th>
            <th scope="col">活动名称</th>
           <!--  <th scope="col">内容</th> -->
            <th scope="col">发布者姓名</th>
            <th scope="col">活动举办时间</th>
            <th scope="col">活动举办地点</th>
            <th scope="col">状态</th>
           
             <th scope="col">操作</th>
           
        </tr>        
    </thead>
    

 
    <tbody>
    <%-- 遍历所有的用户 --%>
    <% 
       int pageSize=12;
       String sql="";
       int showPage=1;
       splitPage pages=new splitPage();
       pages.setCon(new DBConnectionManager().getConnection());
       sql = "select information.id,information.state,information.time,information.address,information.text,information.category_id,";
		sql=sql+"information.demandnumber,information.checknumber,categorytwo.sport_name,";
		sql=sql+"user.name,user.id,user.phone from information,categorytwo,user where ";
		sql=sql+"information.category_id in (select id from categorytwo where category_id = 2)";
		sql=sql+"and categorytwo.id=information.category_id and user.id=information.user_id";
		System.out.print(sql);
       String strPage=null;
       strPage=request.getParameter("showPage");
	  if (strPage==null)
	  {
		showPage=1;
	  }
	  else
	 {
		try
		{
			showPage=Integer.parseInt(strPage);
		}
		catch(NumberFormatException e)
		{
			showPage = 1;
		}
		if(showPage<1) 
		{
			showPage=1;
		}
	}
       pages.initialize(sql, pageSize, showPage);
       Vector vector=pages.getPage();
      for(int i=0;i<vector.size();i++)
      {
         String[] sData=(String[])vector.get(i);
    %>
    
    	<tr>
    		<th scope="row"><input type="checkbox" class="checkbox" value="<%=sData[0]%>"></th>
    		 <td> <%=sData[0] %></td>
    		 <td> <%=sData[8] %> </td>
    		  <td> <%=sData[4] %></td>
    		  <%--  <td>  <s:property value ="#c.content"/></td> --%>
             <td> <%=sData[9] %> </td>
             <td> <%=sData[2] %></td>  
             <td> <%=sData[3] %></td>  
             <td> <%=sData[1] %></td>  
             
          <td>  
       <a  href="../activeManage/delActive.jsp?id=<%=sData[0] %>&&categotyId=2" onClick="return confirm('确定删除?');">删除</a>   
    </td>
        </tr>
       <%} %>
    </tbody>


</table>
<div > <button id="btn1">全选</button>&nbsp;&nbsp;&nbsp; <button id="btn3">反选</button>&nbsp;&nbsp;&nbsp; <button id="btn2">取消 </button>&nbsp;&nbsp;&nbsp; 
 <input type="button" value="批量删除" onclick="getCheck()">
 </div>
<!--分页  -->
<div style="text-align: center;">
<form action="" method="get" target="_self">	
			共<font color=red><%=pages.getRowCount()%></font>条&nbsp;
			<%=pageSize%>条/页&nbsp;
			第<font color=red><%=showPage%></font>页/共<font 
color=red><%=pages.getPageCount()%></font>页 &nbsp;
			<a href="../activeManage/bmqk.jsp?showPage=1" target="_self">[首
页]</a>&nbsp;			
			<%
				//判断"上一页"链接是否要显示
				if(showPage > 1)
				{				
			%>
					<a 
href="../activeManage/bmqk.jsp?showPage
=<%=showPage-1%>" target="_self">[上一页]</a>&nbsp;
			<%
				}
				else
				{
			%>
					[上一页]&nbsp;
			<%
				}
				//判断"下一页"链接是否要显示
				if(showPage < pages.getPageCount())
				{				
			%>
					<a 
href="../activeManage/bmqk.jsp?showPage
=<%=showPage+1%>" target="_self">[下一页]</a>&nbsp;
			<%
				}
				else
				{
			%>
					[下一页]&nbsp;
			<%
				}
			%> 
			<a 
href="../activeManage/bmqk.jsp?showPage
=<%=pages.getPageCount()%>" target="_self">[尾页]</a>&nbsp;
			转到
			<select name="showPage">
			<%
				for(int x=1;x<=pages.getPageCount();x++)
				{
			%>
					<option value="<%=x%>" <%if(showPage==x) 
out.println("selected");%> ><%=x%></option>
			<%
				}
			%>
			</select>			
			页&nbsp;
			<input type="submit" name="go" value="提交"/>
		</form>
		
</div>


</body>
</html>