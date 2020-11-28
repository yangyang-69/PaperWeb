<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>请注册</title>
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
	function yanzheng2(){
		if(form3.UserName.value == "" ||form3.password.value =="" ||form3.UserOrganization.value == ""){
			alert("账号、密码和单位都不能为空");
			return;
		}
		else{
			form3.submit();
			return;
		}
	}
</script>
<body>
	<h2 align="center">
		请注册<br>
	</h2>
	<div id="b">
		<form name="form3" action="registercall.jsp" method="post">
			姓名：<input type ="text" name="UserName" class="a"><br>
			密码：<input type ="password" name="password" class="a"><br>
			单位：<input type ="text" name="UserOrganization" class="a"><br>
		<input type ="button" value="注册" onClick="yanzheng2()"><br>
		</form>
	</div>
</body>
</html>