<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>请注册</title>
		<link rel="stylesheet" href="css/base.css">
		<link rel="stylesheet" href="css/pgzg.css">
		<!-- Meta tags -->
		<!-- Calendar -->
		<link rel="stylesheet" href="css/jquery-ui.css" />
		<!-- //Calendar -->
		<!--stylesheets-->
		<link href="css/style.css" rel='stylesheet' type='text/css' media="all">
		<!--//style sheet end here-->
		<link href="//fonts.googleapis.com/css?family=Cuprum:400,700" rel="stylesheet"/>
		<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>	


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
</head>
<body>
		<div class="fb">
		<h1 class="header-w3ls">
						请注册
		</h1>
		<div class="appointment-w3">
		    <form id="login_form2" name="form3" action="registercall.jsp" method="post">
		    <div class="main">
					<div class="form-add-w3ls">
		        		<input type ="text" name="UserName" class="loginuser"    placeholder="姓名"   /><br>
		        	</div>
			</div>
		     <div class="main">
					<div class="form-add-w3ls">
		        		<input name="password" type="password" class="loginpwd"   placeholder="密码"  /><br>
		       		</div>
			</div>
		     <div class="main">
					<div class="form-add-w3ls">
		       			<input name="UserOrganization" type="text" class="loginuser"   placeholder="单位"  /><br>      
		        	</div>
			</div>
		       <div class="btnn">
		        		<input id="login" type="button" class="loginbtn" value="注册" onClick="yanzheng2()"/>
		    	</div>
		    </form>
		</div>
			<div class="copy">
			<p></p>
		</div>
		</div>
		<div class="clear"></div>
		<div class="w-all banquan">
			<p>版权所有    哈哈哈小组</p>
		</div>
		<script src="<!-- js -->
		<script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
		<!-- //js -->
		<!-- Calendajs/jquery-ui.js"></script>
		<script>
			$(function () {
				$("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
			});
		</script>

	
</body>
</html>