<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%@ page import="beans.Users" %>
<%@ page import="daos.UserDao" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>注册结果</title>
	<link rel="stylesheet" type="text/css" href="css/TransparentLoginBoxDemo.css">
	
</head>
<body>
<%
		UserDao userdao = new UserDao();//创建对象
		request.setCharacterEncoding("UTF-8");//保证中文编码
		String UserName = request.getParameter("UserName");
		String password = request.getParameter("password");
		String UserOrganization = request.getParameter("UserOrganization");//获取参数
		System.out.println(UserName);
		System.out.println(password);
		System.out.println(UserOrganization);
		Users user = userdao.RegisterinDB(UserName,password,UserOrganization);
		//out.print("注册成功"+UserName);
%>

		
		
	
	<div id="login_id">
		    <h2>注册成功，请您<a href="hello.jsp">返回登录</a> </h2>
		
	</div>
	<div class="buttom_id">
   			<p>版权所有:哈哈哈小组</p>
		</div>	
	
		
</body>
</html>