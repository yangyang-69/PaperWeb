<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>请授权</title>
<style>
	.a{
	width:150px;
	height:20px;
	}
	#b{
	width:700px;
	text-align:right;
	}
</style>
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
	<h2 align="center">
		请授权您的身份<br>
	</h2>
	<div id="b">
		<form name="form1" action="usercheck.jsp" method="post">
			账号：<input type ="text" name="UserName" class="a"><br>
			密码：<input type ="password" name="password" class="a"><br>
		<input type ="button" value="登录" onClick="yanzheng1()"><br>
		</form>
		<form name="form2" action="register.jsp" method="post">
		没有账号？
		<input type ="submit" value="注册">
		</form>
	</div>
</body>
</html>