<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>



	<meta charset="utf-8">
    <title>携动人生管理登陆</title>
	
	
    <script type="text/javascript">
	var c="<%=request.getParameter("state") %>";
	if(c==0){
		alert("请核对账号重新登录！");
	}else if(c==1){
	alert("密码错误，重新登录！");
	}
   </script>

  </head>
  
  <body class="login-bg" style="background-color: #A19C9A;">
   
  	<marquee direction="left"  scrollamount="5" style="position:absolute; width:100%; height:40px; left:0px; top:40px;font-size: 34px;font-style:宋体;color: #78EC3A; ">携动人生网后台管理系统</marquee> 
   
   
  <div style="text-align: center;padding-top: 10%">
        <header>
            <h1 style='font-family: "微软雅黑";font-weight: bold;'>携动人生网后台管理系统</h1>
        </header>
    
			<form action="admin_login.action" class="layui-form" method="post">
				<!-- <input name="__RequestVerificationToken" type="hidden" value=""> -->                
				<div class="layui-form-item">
					<label class="login-icon" style='font-family: "微软雅黑";font-weight: bold;'>
						账户：
					</label>
					<input type="text" name="account" lay-verify="userName" autocomplete="off" placeholder="这里输入登录名" class="layui-input">
				</div>
				<br/>
				<div class="layui-form-item">
					<label class="login-icon" style='font-family: "微软雅黑";font-weight: bold;'>
						密码：
					</label>
					<input type="password" name="password" lay-verify="password" autocomplete="off" placeholder="这里输入密码" class="layui-input">
				</div>
				<br/>
				<div class="layui-form-item">
					<div class="pull-left login-remember">
						<label>记住帐号？</label>

						<input type="checkbox" name="rememberMe" disabled="disabled" value="true" lay-skin="switch" title="记住帐号"><div class="layui-unselect layui-form-switch"><i></i></div>
					</div>
					<div class="pull-right"><br>
						<input type="submit" style="width: 70px;height: 25px;" value="登陆"/>
						<input type="reset" style="width: 70px;height: 25px;" value="重置"/>
					</div>
					
					<div class="clear"></div>
				</div>
			</form>        
		</div>
       <div style="text-align: center;">
            <p >2017 © 携动人生</p>
        </div>
   
    </div>
    <script src="../common/layui/layui.js"></script>
    <script>
        layui.use(['layer', 'form'], function () {
            var layer = layui.layer,
				$ = layui.jquery,
				form = layui.form();

            form.verify({
                userName: function (value) {
                    if (value === '')
                        return '请输入用户名';
                },
                password: function (value) {
                    if (value === '')
                        return '请输入密码';
                }
            });

            var errorCount = 0;
        });
		       
    </script>
  </body>
</html>
