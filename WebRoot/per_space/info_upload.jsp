<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>携动人生</title>
		
		 <script type="text/javascript" src="../js/jquery.min.js"></script>
		 <script type="text/javascript" src="../js/calender_js/WdatePicker.js"></script>
		
		 <script type="text/javascript">
        var currentShowCity=0;
        $(document).ready(function(){
         
            $("#province").change(function(){
                $("#province option").each(function(i,o){
                    if($(this).attr("selected"))
                    {
                    
                    
                       $(".city").hide();
                        $(".city").eq(i).show();
                        currentShowCity=i;
             
                    }
                });
            });
            $("#province").change();
            
        });
        //获取运动id
         $(document).ready(function(){
         var test;
          var num;
         $("#province").change(function(){
         num=$("#province").val();
         if(num==1){
       	 	test= $("#sport1").val();
            $("#sportname").attr("value",test); 
         $("#sport1").change(function(){
       	 test= $("#sport1").val();
            $("#sportname").attr("value",test);
           });
           }else if(num==2){
           test= $("#sport2").val();
            $("#sportname").attr("value",test); 
         $("#sport2").change(function(){
       	 test= $("#sport2").val();
            $("#sportname").attr("value",test);
           });
           }else if(num==3){
           test= $("#sport3").val();
            $("#sportname").attr("value",test); 
         $("#sport3").change(function(){
       	 test= $("#sport3").val();
            $("#sportname").attr("value",test);
           });
           }else if(num==4){
           test= $("#sport4").val();
            $("#sportname").attr("value",test); 
         $("#sport4").change(function(){
       	 test= $("#sport4").val();
            $("#sportname").attr("value",test);
           });
           }
            }); 
             }); 
        /* 人数 手机号验证 */
        $(document).ready(function(){
         
          $("#submit").click(function()
          {
            var value = jQuery("#people").val();  
           if((/^(\+|-)?\d+$/.test( value ))&&value>0)
           {  
             return true;  
           }
        else{  
        alert("数量中请输入正整数！");  
        jQuery("#people").val("0");  
        return false;  
          }  
          });
        
         $("#people").keypress(function(event) { 
            var keyCode = event.which; 
            if (keyCode == 46 || (keyCode >= 48 && keyCode <=57)) 
                return true; 
            else 
            {
                alert("请输入正整数!!!");
                return false; 
            }
        }).focus(function() { 
            this.style.imeMode='disabled'; 
        }); 
        }
        );
        function textCounter(field, countfield, maxlimit) {    
   // 函数，3个参数，表单名字，表单域元素名，限制字符；    
   if (field.value.length > maxlimit)    
   //如果元素区字符数大于最大字符数，按照最大字符数截断；    
   fieldfield.value = field.value.substring(0, maxlimit);    
   else    
   //在记数区文本框内显示剩余的字符数；    
   countfield.value = maxlimit - field.value.length;    
   }     
    </script>
   
   
	</head>
	<body bgcolor="#79CEC7" style="align: center;">
		<div style="padding-top: 30px; padding-left: 30px">
			<fieldset style="width: 600px; border-color: #000000; padding-left: 10px">
				<legend>
					<font size="-1" color="#000000"><b>发布信息</b> </font>
				</legend>
				<div class="ErrorDiv">
					<s:fielderror />
					<s:actionerror />
				</div>
				<s:form  action="fileUpload.action" method="post" theme="simple" enctype="multipart/form-data" namespace="/">
			<div style="float: right;padding-right: 60px;"><br/>
			详细信息:<br/><textarea name="sport_detail" style="resize:none" cols="22" rows="6" onKeyDown="textCounter(sport_detail,remLen,70);" onKeyUp="textCounter(sport_detail,remLen,70);" align="center"></textarea>		
		 <br/>您还可以输入<input  name="remLen" style="width: 20px;background: rgba(0,0,0,0);border: 0px;color:red;" type="text" value="70" size="5" readonly="readonly">个字<br><span style="color:yellow;">超出部分将丢失</span></div>
		  <table>
            
            <tr><td colspan="5"><input type="hidden" name="user_id" value="<%=session.getAttribute("userid").toString()%>">  </td></tr>
            <tr id="sport_type">
                <td>运动类型:</td>
                <td colspan="4">
                    <select id="province" name="">
                        <option>--请选择--</option>
                        <option value="1">棋行天下</option>
                        <option value="2">步迈乾坤</option>
                        <option value="3">球球作战</option>
                        <option value="4">闲谈雅致</option>
                    </select>
                    <select class="city" >
                        <option>--请选择--</option>
                    </select>
                    <select id="sport1" class="city" >
                        <option value="1">围棋</option>
                        <option value="2">象棋</option>
                        <option value="3">跳棋</option>
                        <option value="4">其他</option>
                    </select>

                    <select id="sport2" class="city" >
                       <option value="5">骑行</option>
                        <option value="6">跑步</option>
                        <option value="7">踏青</option>
                        <option value="8">其他</option>
                    </select>

                    <select id="sport3" class="city" >
                        <option value="9">篮球</option>
                        <option value="10">足球</option>
                        <option value="11">排球</option>
                        <option value="12">其他</option>
                    </select>
                    <select id="sport4" class="city" >
                       <option value="13">读书</option>
                        <option value="14">辩论</option>
                        <option value="15">写作</option>
                        <option value="16">其他</option>
                    </select>
                </td>
                </tr> 
                <tr>
        
                <td>标题</td>
                <td colspan="4"> <input type="text" name="text"  placeholder="请输入标题"></td>
            </tr>
                <tr>
                <td colspan="5"><input type="hidden" name="category_id" id="sportname" value=""/></td></tr>
              <tr>
                <td>时间：</td>
                <td colspan="4"><input id="d421" class="Wdate" name="time" type="text" onfocus="WdatePicker({startDate:'%y-%M-01 00:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss',alwaysUseStartDate:true,minDate:'%y-%M-%d',firstDayOfWeek:1})"></td>
              </tr>
            <tr>
                <td>地点：</td>
                <td colspan="4"><input name="address" type="text" placeholder="请输入活动地点"></td>
            </tr>
            <tr>
            <td>需要人数：</td>
            <td colspan="4"><input type="number" name="demandnumber" min="1" placeholder="请输入需要的人数" id="people"></td>
            </tr>
            <tr>
                <td>图片</td>
                <td colspan="4"><input type="file" name="file" >
               </td>
            </tr>
           <tr><td colspan="4" style="color: green;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;图片大小<1M</td></tr>
       
		<tr><td colspan="5" style="text-align:center;padding-right: 0px ">
		<s:reset value="重置" cssClass="button" ></s:reset> 
		<s:submit value="提交" cssClass="button" id="submit"></s:submit>
		 </td></tr>
				</s:form>
				 </table>
			</fieldset>
		</div>
	</body>
</html>
