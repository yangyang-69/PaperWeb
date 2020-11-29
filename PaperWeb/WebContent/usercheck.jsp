<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%@ page import="beans.Users" %>
<%@ page import="daos.UserDao" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>验证登录</title>
	<link rel="stylesheet" type="text/css" href="css/TransparentLoginBoxDemo.css">
</head>
<body>
<img src="img/bg5.jpg"/>
<!-- 实验10 --> 
<%
		UserDao userdao = new UserDao();//创建对象
		request.setCharacterEncoding("UTF-8");//保证中文编码
		String UserName = request.getParameter("UserName");
		String password = request.getParameter("password");//获取参数
		System.out.println(UserName);
		System.out.println(password);
		Users user = userdao.UserCheckbygetpass(UserName);
		//调用Dao的方法查询数据库
		if(user.getPassword().equals(password) && user!= null){
			//判断是否满足条件
			out.print("登录成功,3秒后跳转");
			%>
				<form name="pass_form1" action="index.jsp" method="post" >
					<input type="hidden" name="UserName" value="<%=UserName%>">
					<!--<input type="submit" value="提交">  -->
				</form>
				<script type="text/javascript">
					setTimeout("pass_form1.submit();",1000);
				</script>
				<meta http-equiv="refresh" content="3;url=index.jsp">
			<%
		}
		else{
			%>
			<div id="login_id">	
				<h2>登陆失败，请您<a href="hello.jsp">重新登录</a></h2>	
			</div>	
			<%
		}
			%>
<div id="buttom_id">
		   <h5>版权所有:哈哈哈小组</h5>
</div>
</body>
</html>