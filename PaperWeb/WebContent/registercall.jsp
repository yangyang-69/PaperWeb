<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%@ page import="beans.Users" %>>
<%@ page import="daos.UserDao" %>>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册结果</title>
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
		out.print("注册成功"+UserName);
		%>
			请您<a href="hello.jsp">返回登录</a> 
		<%
%>
</body>
</html>