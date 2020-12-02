<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>请注册</title>
	<link rel="stylesheet" type="text/css" href="css/TransparentLoginBoxDemo.css">
	

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
		<div id="login_id">
		    <h1>请注册</h1>
		    <form id="login_form2" name="form3" action="registercall.jsp" method="post">
		        <input type ="text" name="UserName" class="loginuser"    placeholder="姓名"   /><br>
		        <input name="password" type="password" class="loginpwd"   placeholder="密码"  /><br>
		       	<input name="UserOrganization" type="text" class="loginuser"   placeholder="单位"  /><br>      
		        <input id="login" type="button" class="loginbtn" value="注册" onClick="yanzheng2()"/>
		    </form>
		</div>
		<div class="buttom_id">
   			<p>版权所有:哈哈哈小组</p>
		</div>

	
</body>
</html>