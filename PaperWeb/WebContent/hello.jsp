<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>请授权</title>
	<link rel="stylesheet" type="text/css" href="css/TransparentLoginBoxDemo.css">

</head>
<script type="text/javascript">
	function yanzheng1(){
		if(form1.UserName.value == "" ||form1.password.value ==""){
			alert("账号和密码不能为空");
			return;
		}
		else{
			form1.submit();
			return;
		}
	}
</script>
<body>

		<img src="img/bg5.jpg" />
		<div id="login_id">
		    <h1>中国民族论文信息网</h1>
		    <form id="login_form" name="form1" action="usercheck.jsp" method="post">
		        <input type ="text" name="UserName" class="loginuser"    placeholder="用户名"   />
		        <input name="password" type="password" class="loginpwd"   placeholder="密码"  />
		        <input id="login" type="button" class="loginbtn" value="登录" onClick="yanzheng1()" />
		        
		    </form>
		    <form id="login_form1" name="form2" action="register.jsp" method="post">
		    
		    	<nobr id="zh">没有账号？</nobr>
				<input type ="submit" class="loginbtn" value="注册">
			</form>
		</div>
		<div id="buttom_id">
   		<h5>版权所有:哈哈哈小组</h5>
		</div>
		




	
	
	
</body>
</html>